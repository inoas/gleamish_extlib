/// Takes an argument and a single function,
/// calls that function with that argument
/// and returns that argument instead of the function return value.
/// Useful for running synchronous side effects in a pipeline.
///
/// ## Examples
///
/// ```gleam
/// > import gleam/io
/// > "Thanks Joe & Louis"
/// > |> any2.tap(fn(s) { s <> "... and Jose!" })
/// "Thanks Joe & Louis"
/// ```
///
pub fn tap(arg: a, effect: fn(a) -> b) -> a {
  effect(arg)
  arg
}

/// Allows to use the `==` operator in pipes and as a callback.
///
/// ## Examples
///
/// ```gleam
/// > "a" |> any2.equals("a")
/// True
/// ```
///
/// ```gleam
/// > "a" |> any2.equals(to: "b")
/// False
/// ```
///
pub fn equals(a: any, to b: any) -> Bool {
  a == b
}

/// Allows to use the `==` operator in pipes and as a callback.
///
/// ## Examples
///
/// ```gleam
/// > "a" |> any2.differs("a")
/// False
/// ```
///
/// ```gleam
/// > "a" |> any2.differs(from: "b")
/// True
/// ```
///
pub fn differs(a: any, from b: any) -> Bool {
  a != b
}
