import gleam/option

/// Searches a list for the first occurrance of an element and returns its
/// index.
///
/// Notice: Indexing a list is very slow and not an encouraged.
/// You likely want to use another data structure such as a map in this case.
///
/// ## Examples
///
/// first_index([1, 2, 3], 2)
/// Some(1)
///
/// first_index(in: [1, 2, 3], of: 4)
/// None
///
pub fn first_index(in list: List(any), of value: any) -> option.Option(Int) {
  do_first_index(list, value, 0)
}

fn do_first_index(list: List(any), value: any, index: Int) -> option.Option(Int) {
  case list {
    [] -> option.None
    [head, ..] if head == value -> option.Some(index)
    [_, ..tail] -> do_first_index(tail, value, index + 1)
  }
}
