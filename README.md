# Gleamish Extlib: An extended standard library for Gleam

[![Package Version](https://img.shields.io/hexpm/v/extlib)](https://hex.pm/packages/gleamish_extlib)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/gleamish_extlib/)

A Gleam library having features that could be in gleam_stdlib... or not ;-).

All functions should run on all targets as good as possible: Erlang, NodeJS and browsers.

For current features, see [Changelog](CHANGELOG.md).

## FAQ

### Why are modules named "x"

The reason is so that they can live next to the stdlib without having to alias them.

```gleam
import gleam/order
import gleamish/order_ex

// call order.compare in this module
// call order_ex.reverse_fn in this module
```

### But why are modules not existent in stdlib still suffixed

Because they could exist in stdlib in future.

## Unit testing

Runs unit tests against Erlang and JavaScript:

```sh
./bin/test
```

## Ideas for the future

- `kernel.inspect` (same as `string.inspect`), `kernel.inspect_raw()` and `io.debug_raw()`.
- Extended number types that only work around the Result type and return Errors if boundaries are exeecded (including BigInt support).
- Aliases or implementations for common functions available in Python, JavaScript, PHP.
- OS timezone name, OS timezone offset, OS time (non-monotonic time).
- Monotonic timestamp with microseconds.
- Default and available languages and locales.
- Total and available RAM.
- Remaining space on the current volume.

## Installation

If available on Hex this package can be added to your Gleam project:

```sh
gleam add gleamish_extlib
```

and its documentation can be found at <https://hexdocs.pm/gleamish_extlib>.
