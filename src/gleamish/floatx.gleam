import gleam/float

/// Returns the absolute difference of the inputs as a positive Float.
///
/// ## Examples
///
/// ```gleam
/// > absolute_difference(-10.0, 10.0)
/// 20.0
/// ```
///
/// ```gleam
/// > absolute_difference(0.0, -2.0)
/// 2.0
/// ```
///
pub fn absolute_difference(a: Float, b: Float) -> Float {
  a -. b
  |> float.absolute_value()
}
