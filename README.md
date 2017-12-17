# Idris Elixir

An Elixir code-generator for Idris based on the `LDecl` intermediate representation.

Work in progress.


## Build

```
stack build
```

## Run

```
cd examples
stack exec idris -- ex.idr --codegen elixir -o ex.exs
```
