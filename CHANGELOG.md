# Changelog

## 0.2.0

- Renamed extlib to gleamish_extlib and import path is now `gleamish/MODULEx`.
- Removed functions that became available in stdlib.
- Added any module:
  - Imported `tap` from `stdlib/function` as it should be in any.
  - Added `equals` and `differs` function to complete functions for all operators.

## 0.1.0

- Basic interger and float calculation to be used in pipelines: add, multiply, subtract (divide is available in gleam_stdlib)
- System unix timestamp
- Operating system name and version
- Array type which relies on Erlang's array type and JavaScripts array type and (for now) allows to set abitrary indexes
