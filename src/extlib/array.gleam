//// Constant lookup time arrays
//// Utilizes erlang's array and JavaScripts array type
////

pub external type Array(any)

/// Creates an Array
///
pub fn new() -> Array(any) {
  do_from_list([])
}

/// Creates an Array from a List
///
pub fn from_list(l: List(any)) -> Array(any) {
  do_from_list(l)
}

if erlang {
  external fn do_from_list(l: List(any)) -> Array(any) =
    "extlib" "array_from_list"
}

if javascript {
  external fn do_from_list(l: List(any)) -> Array(any) =
    "../extlib.mjs" "array_from_list"
}

/// Creates a List from an Array
/// Notice: For arrays there may be holes in indexes, but not for lists.
/// When converting from Array to List, the values are reindexed in the same order.
///
pub fn to_list(arr: Array(any)) -> List(any) {
  do_to_list(arr)
}

if erlang {
  external fn do_to_list(arr: Array(any)) -> List(any) =
    "extlib" "array_to_list"
}

if javascript {
  external fn do_to_list(arr: Array(any)) -> List(any) =
    "../extlib.mjs" "array_to_list"
}

/// Set's an Array's value at a given indexes and returns the updated Array
///
pub fn set(arr: Array(any), at idx: Int, to val: any) -> Array(any) {
  do_set(arr, idx, val)
}

if erlang {
  external fn do_set(arr: Array(any), idx: Int, val: any) -> Array(any) =
    "extlib" "array_set"
}

if javascript {
  external fn do_set(arr: Array(any), idx: Int, val: any) -> Array(any) =
    "../extlib.mjs" "array_set"
}

/// Get's an Array's value at a given index
///
pub fn get(arr: Array(any), at idx: Int) -> Result(any, Nil) {
  do_get(arr, idx)
}

if erlang {
  external fn do_get(arr: Array(any), idx: Int) -> Result(any, Nil) =
    "extlib" "array_get"
}

if javascript {
  external fn do_get(arr: Array(any), idx: Int) -> Result(any, Nil) =
    "../extlib.mjs" "array_get"
}

/// Returns the Array's size.
/// The size is the inclusive range between the lowest and highest set index.
///
/// ## Example:
///
/// ```gleam
/// > array.new()
///   |> array.set(at: 1, to: 1)
///   |> array.set(at: 3, to: 3)
///   |> array.size
/// 4
/// ```
///
pub fn size(arr: Array(any)) -> Int {
  do_size(arr)
}

if erlang {
  external fn do_size(arr: Array(any)) -> Int =
    "extlib" "array_size"
}

if javascript {
  external fn do_size(arr: Array(any)) -> Int =
    "../extlib.mjs" "array_size"
}

/// Returns the Array's element count.
/// The element count equals the amount of elements independent of their index.
///
/// ## Example:
///
/// ```gleam
/// > array.new()
///   |> array.set(at: 1, to: 1)
///   |> array.set(at: 3, to: 3)
///   |> array.count
/// 2
/// ```
///
/// Notice: On JavaScript setting elements to `Nil` will result in count() omitting them
///         in their sum as they map to `undefined` in the JavaScript runtime.
///
pub fn count(arr: Array(any)) -> Int {
  do_count(arr)
}

if erlang {
  external fn do_count(arr: Array(any)) -> Int =
    "extlib" "array_count"
}

if javascript {
  external fn do_count(arr: Array(any)) -> Int =
    "../extlib.mjs" "array_count"
}

/// Reduces an array from left to right
///
pub fn fold(arr: Array(any), acc, f: fn(a, any) -> acc) -> acc {
  do_fold(arr, acc, f)
}

if erlang {
  pub external fn do_fold(Array(any), acc, fn(arr, any) -> acc) -> acc =
    "extlib" "array_reduce"
}

if javascript {
  pub external fn do_fold(Array(any), acc, fn(arr, any) -> acc) -> acc =
    "../extlib.mjs" "array_reduce"
}

/// Reduces an array from right to left
///
pub fn fold_right(arr: Array(any), acc, f: fn(a, any) -> acc) -> acc {
  do_fold_right(arr, acc, f)
}

if erlang {
  pub external fn do_fold_right(Array(any), acc, fn(arr, any) -> acc) -> acc =
    "extlib" "array_reduce_right"
}

if javascript {
  pub external fn do_fold_right(Array(any), acc, fn(arr, any) -> acc) -> acc =
    "../extlib.mjs" "array_reduce_right"
}
