import gleamish/arrayx
import gleeunit/should

pub fn from_list_and_to_list_test() {
  [1, 2, 3]
  |> arrayx.from_list()
  |> arrayx.to_list
  |> should.equal([1, 2, 3])

  [0, 1, 2]
  |> arrayx.from_list()
  |> arrayx.set(at: 4, to: 4)
  |> arrayx.to_list
  |> should.equal([0, 1, 2, 4])

  [Nil]
  |> arrayx.from_list
  |> arrayx.to_list
  |> should.equal([Nil])
}

pub fn new_test() {
  arrayx.new()
  |> arrayx.get(1)
  |> should.equal(Error(Nil))

  arrayx.new()
  |> arrayx.to_list
  |> should.equal([])
}

pub fn get_test() {
  [0, 1, 2]
  |> arrayx.from_list
  |> arrayx.get(0)
  |> should.equal(Ok(0))

  [0, 1, 2]
  |> arrayx.from_list
  |> arrayx.get(1)
  |> should.equal(Ok(1))

  [Nil]
  |> arrayx.from_list
  |> arrayx.get(at: 0)
  |> should.equal(Ok(Nil))
}

pub fn set_test() {
  [0, 1, 2]
  |> arrayx.from_list
  |> arrayx.set(0, 9001)
  |> arrayx.get(0)
  |> should.equal(Ok(9001))

  [0, 1, 2]
  |> arrayx.from_list
  |> arrayx.set(0, 9001)
  |> arrayx.get(1)
  |> should.equal(Ok(1))

  [0]
  |> arrayx.from_list
  |> arrayx.set(2, 2)
  |> arrayx.get(2)
  |> should.equal(Ok(2))

  [0]
  |> arrayx.from_list
  |> arrayx.set(2, 2)
  |> arrayx.get(1)
  |> should.equal(Error(Nil))

  arrayx.new()
  |> arrayx.set(at: 0, to: 0)
  |> arrayx.get(at: 0)
  |> should.equal(Ok(0))
}

pub fn size_test() {
  arrayx.new()
  |> arrayx.set(at: 1, to: 1)
  |> arrayx.set(at: 3, to: 3)
  |> arrayx.size
  |> should.equal(4)
}

pub fn count_test() {
  arrayx.new()
  |> arrayx.set(at: 1, to: 1)
  |> arrayx.set(at: 3, to: 3)
  |> arrayx.count
  |> should.equal(2)
}

pub fn fold_test() {
  []
  |> arrayx.from_list
  |> arrayx.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([])

  [1, 2, 3, 4]
  |> arrayx.from_list
  |> arrayx.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([4, 3, 2, 1])

  [4, 3, 2, 1]
  |> arrayx.from_list
  |> arrayx.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([1, 2, 3, 4])
}

pub fn fold_right_test() {
  []
  |> arrayx.from_list
  |> arrayx.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([])

  [1, 2, 3, 4]
  |> arrayx.from_list
  |> arrayx.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([1, 2, 3, 4])

  [4, 3, 2, 1]
  |> arrayx.from_list
  |> arrayx.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([4, 3, 2, 1])
}

if erlang {
  pub fn runtime_specific_test() {
    arrayx.new()
    |> arrayx.set(at: 1, to: Nil)
    |> arrayx.set(at: 3, to: Nil)
    |> arrayx.count
    |> should.equal(2)
  }
}

if javascript {
  pub fn runtime_specific_test() {
    arrayx.new()
    |> arrayx.set(at: 1, to: Nil)
    |> arrayx.set(at: 3, to: Nil)
    |> arrayx.count
    |> should.equal(0)
  }
}
