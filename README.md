# Gleam ExtLib
<!--
[![Package Version](https://img.shields.io/hexpm/v/extlib)](https://hex.pm/packages/extlib)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/extlib/)
-->
A Gleam library having features that could be in gleam_stdlib - or not ;-).

All functions should run on all targets as good as possible: Erlang, NodeJS and browsers.

For current features, see [Changelog](CHANGELOG.md).

Possible future features:

- extended number types that only work around the Result type and return Errors if boundaries are exeecded (including BigInt support)
- aliases or implementations for common functions available in Python, JavaScript, PHP
- OS timezone name, OS timezone offset, OS time (non-monotonic time)
- monotonic timestamp with microseconds
- default and available languages and locales
- total and available RAM
- remaining space on the current volume

## Unit testing

Runs unit tests against Erlang and JavaScript:

```sh
./bin/test
```

<!--
## Installation

If available on Hex this package can be added to your Gleam project:

```sh
gleam add extlib
```

and its documentation can be found at <https://hexdocs.pm/extlib>. -->
