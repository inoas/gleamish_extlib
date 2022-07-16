import extlib/array
import gleeunit/should

pub fn from_list_and_to_list_test() {
  array.from_list([1, 2, 3])
  |> array.to_list
  |> should.equal([1, 2, 3])
}

pub fn new_test() {
  array.new()
  |> array.get(1)
  |> should.equal(Error(Nil))

  array.new()
  |> array.to_list
  |> should.equal([])
}

pub fn get_test() {
  array.from_list([1, 2, 3])
  |> array.get(0)
  |> should.equal(Ok(1))
}

pub fn set_test() {
  array.from_list([1, 2, 3])
  |> array.set(0, 9001)
  |> array.get(0)
  |> should.equal(Ok(9001))

  array.from_list([0])
  |> array.set(2, 2)
  |> array.get(2)
  |> should.equal(Ok(2))

  array.from_list([0])
  |> array.set(2, 2)
  |> array.get(1)
  |> should.equal(Error(Nil))
}
