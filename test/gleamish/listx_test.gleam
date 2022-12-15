import gleamish/listx
import gleeunit/should
import gleam/option

pub fn first_index_of_test() {
  listx.first_index_of([1, 2, 3], 2)
  |> should.equal(option.Some(1))

  listx.first_index_of([1, 2, 3], 4)
  |> should.equal(option.None)
}
