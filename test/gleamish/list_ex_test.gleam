import gleam/list
import gleam/option
import gleamish/list_ex
import gleeunit/should

pub fn first_index_of_test() {
  list_ex.first_index([1, 2, 3], 2)
  |> should.equal(option.Some(1))

  list_ex.first_index(in: [1, 2, 3], of: 4)
  |> should.equal(option.None)
}

pub fn count_test() {
  list_ex.count([])
  |> should.equal(list.length([]))

  list_ex.count([1])
  |> should.equal(list.length([1]))

  list_ex.count([1, 2, 3])
  |> should.equal(list.length([1, 2, 3]))

  list_ex.count([])
  |> should.equal(0)

  list_ex.count([1])
  |> should.equal(1)

  list_ex.count([1, 2, 3])
  |> should.equal(3)
}
