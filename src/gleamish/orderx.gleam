import gleam/order

/// Inverts a function returning an `Order`, so that once the function returns
/// `less-than` becomes `greater-than` xor `greater-than` becomes `less-than`.
///
/// ## Examples
///
/// ``` gleam
/// > import list
/// > import orderx
/// > import int
/// > [1, 2, 3] |> list.sort(by: orderx.reverse_fn(int.compare))
/// [3, 2, 1]
/// ```
///
pub fn reverse_fn(order_fn: fn(a, b) -> order.Order) -> fn(a, b) -> order.Order {
  fn(a, b) {
    order_fn(a, b)
    |> order.reverse
  }
}
