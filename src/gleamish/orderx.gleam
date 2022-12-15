import gleam/order

/// Inverts a function returning an `Order`, so that once the function returns
/// `less-than` becomes `greater-than` xor `greater-than` becomes `less-than`.
///
/// ## Examples
///
/// ``` gleam
/// > import gleam/int
/// > import gleam/list
/// > import gleamish/orderx
/// > [1, 2, 3] |> list.sort(by: orderx.reverse_fn(int.compare))
/// [3, 2, 1]
/// ```
///
pub fn reverse_fn(
  order_fn: fn(any, any) -> order.Order,
) -> fn(any, any) -> order.Order {
  fn(a: any, b: any) {
    order_fn(a, b)
    |> order.reverse
  }
}
