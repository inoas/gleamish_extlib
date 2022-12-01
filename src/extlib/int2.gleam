/// Adds two integers, useful for piped calculation
/// > 0 |> add(1)
/// 1
///
/// > 1 |> add(2)
/// 3
///
pub fn add(a: Int, b: Int) -> Int {
  a + b
}

/// Multiplies two integers, useful for piped calculation
///
/// ## Examples
///
/// ```gleam
/// > 0 |> multiply(1)
/// 0
///
/// > 1 |> multiply(2)
/// 2
/// ```
///
pub fn multiply(a: Int, b: Int) -> Int {
  a * b
}

/// Subtracts two integers, useful for piped calculation
/// You may pipe into the minuend or the subtrahend of the substraction:
///
/// ## Examples
///
/// ```gleam
/// > 0 |> subtract(1)
/// -1
///
/// > 0 |> subtract(subtrahend: 1)
/// -1
///
/// > 0 |> subtract(minuend: 1)
/// 1
/// ```
///
pub fn subtract(minuend a: Int, subtrahend b: Int) -> Int {
  a - b
}
