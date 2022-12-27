import gleam/list
import gleam/option

/// Searches a list for the first occurrance of an element and returns its
/// index.
///
/// Notice: Indexing a list is very slow and not an encouraged.
/// You likely want to use another data structure such as a map in this case.
///
/// ## Examples
///
/// ```gleam
/// first_index([1, 2, 3], 2)
/// Some(1)
/// ```
///
/// ```gleam
/// first_index(in: [1, 2, 3], of: 4)
/// None
/// ```
///
pub fn first_index(in l: List(any), of value: any) -> option.Option(Int) {
  do_first_index(l, value, 0)
}

fn do_first_index(l: List(any), value: any, index: Int) -> option.Option(Int) {
  case l {
    [] -> option.None
    [head, ..] if head == value -> option.Some(index)
    [_, ..tail] -> do_first_index(tail, value, index + 1)
  }
}

/// Same as `list.length`.
/// However `length` communicates a static property where in fact counting
/// the length of a single linked list is an expensive operation.
///
pub fn count(l: List(any)) -> Int {
  list.length(l)
}
