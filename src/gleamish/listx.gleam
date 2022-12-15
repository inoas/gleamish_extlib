import gleam/option

/// Searches a list for the first occurrance of an element and returns its
/// index.
///
/// Notice: Indexing a list is very slow and not an encouraged.
/// You likely want to use another data structure such as a map in this case.
///
/// ## Examples
///
/// first_index_of([1, 2, 3], 2)
/// Some(1)
///
/// first_index_of([1, 2, 3], 4)
/// None
///
pub fn first_index_of(list: List(a), elem: a) -> option.Option(Int) {
  do_first_index_of(list, elem, 0)
}

fn do_first_index_of(list: List(a), elem: a, index: Int) -> option.Option(Int) {
  case list {
    [] -> option.None
    [head, ..] if head == elem -> option.Some(index)
    [_, ..tail] -> do_first_index_of(tail, elem, index + 1)
  }
}
