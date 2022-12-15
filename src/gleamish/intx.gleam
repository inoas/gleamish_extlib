import gleam/int

/// Returns the absolute difference of the inputs as a positive Int.
///
/// ## Examples
///
/// ```gleam
/// > absolute_difference(-10, 10)
/// > 20
/// ```
///
/// ```gleam
/// > absolute_difference(0, -2)
/// 2
/// ```
///
pub fn absolute_difference(a: Int, b: Int) -> Int {
  a - b
  |> int.absolute_value()
}
