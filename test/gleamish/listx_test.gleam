import gleamish/listx
import gleeunit/should
import gleam/option

pub fn first_index_of_test() {
  listx.first_index([1, 2, 3], 2)
  |> should.equal(option.Some(1))

  listx.first_index(in: [1, 2, 3], of: 4)
  |> should.equal(option.None)
}
