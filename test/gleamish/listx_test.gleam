import gleam/list
import gleam/option
import gleamish/listx
import gleeunit/should

pub fn first_index_of_test() {
  listx.first_index([1, 2, 3], 2)
  |> should.equal(option.Some(1))

  listx.first_index(in: [1, 2, 3], of: 4)
  |> should.equal(option.None)
}

pub fn count() {
  listx.count([])
  |> should.equal(list.length([1, 2, 3]))

  listx.count([1])
  |> should.equal(list.length([1]))

  listx.count([1, 2, 3])
  |> should.equal(list.length([1, 2, 3]))

  listx.count([])
  |> should.equal(0)

  listx.count([1])
  |> should.equal(1)

  listx.count([1, 2, 3])
  |> should.equal(3)
}
