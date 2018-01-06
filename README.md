# Idris Elixir

An Elixir code-generator for Idris based on the `LDecl` intermediate representation. Use dependent types and other awsome Idris features with easy FFI to Elixir.

Work in progress, much inspired by the [Javascript](https://github.com/idris-lang/Idris-dev/tree/master/src/IRTS/JavaScript) and [Python](https://github.com/ziman/idris-py) code-generators.

## Examples

There is a behaviour type `Beh : Type -> Type -> Type` which is used for coding safe actors. These are actors which won't send messages to actors which don't know how to handle them. `Beh a b` is code for a safe-actor which expects messages of type `a` which results in a `b`. The essential functions are:

```idris
||| PID of current process
self : Beh a (PID a)

||| Receive a message
recv : Beh a a

||| Send a message to a prcess which expects messages of that type
send : (pid : PID m) -> (x : m) -> Beh a ()

||| Spawn a new process and return PID
spawn : Beh b () -> Beh a (PID b)
```

### Frequency allocation server

Here is an example of a frequency allocation server for a telephone network (an example from the [Designing for Scalability with Erlang/OTP](http://shop.oreilly.com/product/0636920024149.do) book):

```idris
State : Type
State = List Int

mutual
  data Req = GetFreq (PID Resp) | RetFreq Int
  data Resp = NoneFree | Freq Int

loop : State -> Beh Req ()
loop free = do
  x <- recv
  case x of
    GetFreq pid => do
      case free of
        [] => do
          send pid NoneFree
          loop []
        i :: rest => do
          send pid (Freq i)
          loop rest
    RetFreq i => loop (i :: free)
```

Full example [here](https://github.com/jameshaydon/idris-elixir/blob/master/examples/lib/Frequency.idr).

### Handle polymorphic messages

Using fancy idris types we can also make "polymorphic servers" responding to
many sorts of messages, for example messages of any type which implements a
certain interface:

```idris
data ShowVal : Type where
  MkShowVal : {a : Type} -> (Show a) => a -> ShowVal

printer : Beh (PID (), ShowVal) ()
printer = do
  (pid, MkShowVal x) <- recv
  liftIO (putStrLn' ("Here is you printout: " ++ show x))
  send pid ()
  printer
```

### Respond safely to arbitrary servers

By including in the message a constructor (or arbitrary function to use to
respond), we can also have servers which respond to various other processes:

```idris
RespInt : Type
RespInt = (a ** (PID a, Int -> a))

keepInt : Int -> Beh (RespInt, Int) ()
keepInt state = do
  ((_ ** (pid, injInt)), i) <- recv
  let newState = state + i
  send pid (injInt newState)
  keepInt newState

sendKeepInt : PID (RespInt, Int) -> PID a -> (Int -> a) -> Int -> Beh a ()
sendKeepInt ki pid f i = send ki ((_ ** (pid, f)), i)

data Foo = A Int | B (List String)

foo : PID () -> PID (RespInt, Int) -> Beh Foo ()
foo coord ki = do
  me <- self
  sendKeepInt ki me A 1
  A resp <- recv | _ => liftIO (putStrLn' "foo got back something else.")
  liftIO (putStrLn' ("foo got back: " ++ show resp))
  send coord ()
```

__TODO:__ It would also be nice to create processes which implement _protocols_ specified
in their type.

### OTP

I am in the process of making FFI functions for spaning OTP servers. For the moment there is only:

```idris
gengenserver : (init : () -> InitRet state reason) ->
               (hcall : Req msg state -> HandleCallRet state reply reason) ->
               EIO (Ptr, Ptr)
```

which will spawn an OTP GenServer with init function `init` and `hcall` for the `handle_call` callback.

## FFI

Datatypes are compiled as follows:

| Idris                                                              | Elixir        |
| ---                                                                | ---           |
| `() : ()`                                                          | `{}`          |
| `(x, y) : (a,b)`                                                   | `{x, y}`      |
| `True, False : Bool`                                               | `true, false` |
| Idris `List`s and any type using the constructors `Nil` and `(::)` | Elixir lists  |
| Idris Strings                                                      | Elixir strings |

The constructors of a custom data-type are compiled to tuples whose first item
is an Elixir atom corresponding to the constructor name.

Example:

```idris
data Tree a : Type -> Type where
  Leaf : (x : a) -> Tree a
  Node : (left : Tree a) -> (right : Tree a) -> Tree a
```

The idris tree

```idris
Node (Leaf 42)
     (Node (Node (Leaf 2)
                 (Leaf 4))
           (Leaf 7))
```

Will compile to the Elixir value:

```elixir
{:Node, {:Leaf, 42},
        {:Node, {:Node, {:Leaf, 2},
                        {:Leaf, 4}},
                {:Leaf, 7}}}
```

However constructors with no arguments get turned into simple keywords, so for
example `Nothing` corresponds to `:Nothing`.

If you are using a datatype with FFI you might need to use the `%used` directive
to avoid the idris compiler erasing the fields:

```idris
%used Leaf x
%used Node left
%used Node right
```

## Build

```
stack build
```

## Run

```
cd examples
stack exec idris -- ex.idr --codegen elixir -o ex.exs
```

## TODO

- Make protocol actors
- Implement FFI functions for the main OTP behaviours
- The [Elchemy](https://github.com/wende/elchemy) project uses `curry` to make functions curried. `idris-elixir` should do this too.
