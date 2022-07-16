import extlib/array
import gleeunit/should

pub fn from_list_and_to_list_test() {
  [1, 2, 3]
  |> array.from_list()
  |> array.to_list
  |> should.equal([1, 2, 3])

  [0, 1, 2]
  |> array.from_list()
  |> array.set(at: 4, to: 4)
  |> array.to_list
  |> should.equal([0, 1, 2, 4])

  [Nil]
  |> array.from_list
  |> array.to_list
  |> should.equal([Nil])
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
  [0, 1, 2]
  |> array.from_list
  |> array.get(0)
  |> should.equal(Ok(0))

  [0, 1, 2]
  |> array.from_list
  |> array.get(1)
  |> should.equal(Ok(1))

  [Nil]
  |> array.from_list
  |> array.get(at: 0)
  |> should.equal(Ok(Nil))
}

pub fn set_test() {
  [0, 1, 2]
  |> array.from_list
  |> array.set(0, 9001)
  |> array.get(0)
  |> should.equal(Ok(9001))

  [0, 1, 2]
  |> array.from_list
  |> array.set(0, 9001)
  |> array.get(1)
  |> should.equal(Ok(1))

  [0]
  |> array.from_list
  |> array.set(2, 2)
  |> array.get(2)
  |> should.equal(Ok(2))

  [0]
  |> array.from_list
  |> array.set(2, 2)
  |> array.get(1)
  |> should.equal(Error(Nil))

  array.new()
  |> array.set(at: 0, to: 0)
  |> array.get(at: 0)
  |> should.equal(Ok(0))
}

pub fn size_test() {
  array.new()
  |> array.set(at: 1, to: 1)
  |> array.set(at: 3, to: 3)
  |> array.size
  |> should.equal(4)
}

pub fn count_test() {
  array.new()
  |> array.set(at: 1, to: 1)
  |> array.set(at: 3, to: 3)
  |> array.count
  |> should.equal(2)
}

pub fn fold_test() {
  []
  |> array.from_list
  |> array.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([])

  [1, 2, 3, 4]
  |> array.from_list
  |> array.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([4, 3, 2, 1])

  [4, 3, 2, 1]
  |> array.from_list
  |> array.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([1, 2, 3, 4])
}

pub fn fold_right_test() {
  []
  |> array.from_list
  |> array.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([])

  [1, 2, 3, 4]
  |> array.from_list
  |> array.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([1, 2, 3, 4])

  [4, 3, 2, 1]
  |> array.from_list
  |> array.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([4, 3, 2, 1])
}

if erlang {
  pub fn runtime_specific_test() {
    array.new()
    |> array.set(at: 1, to: Nil)
    |> array.set(at: 3, to: Nil)
    |> array.count
    |> should.equal(2)
  }
}

if javascript {
  pub fn runtime_specific_test() {
    array.new()
    |> array.set(at: 1, to: Nil)
    |> array.set(at: 3, to: Nil)
    |> array.count
    |> should.equal(0)
  }
}
