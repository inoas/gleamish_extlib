import gleam/int
import gleam/list
import gleamish/orderx
import gleeunit/should

pub fn reverse_fn_test() {
  [1, 2, 3]
  |> list.sort(by: orderx.reverse_fn(int.compare))
  |> should.equal([3, 2, 1])
}
