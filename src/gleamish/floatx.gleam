import gleam/float

/// Returns the absolute difference of the inputs as a positive Float.
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
///
pub fn absolute_difference(a: Float, b: Float) -> Float {
  a -. b
  |> float.absolute_value()
}
