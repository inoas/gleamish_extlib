import extlib/array2
import gleeunit/should

pub fn from_list_and_to_list_test() {
  [1, 2, 3]
  |> array2.from_list()
  |> array2.to_list
  |> should.equal([1, 2, 3])

  [0, 1, 2]
  |> array2.from_list()
  |> array2.set(at: 4, to: 4)
  |> array2.to_list
  |> should.equal([0, 1, 2, 4])

  [Nil]
  |> array2.from_list
  |> array2.to_list
  |> should.equal([Nil])
}

pub fn new_test() {
  array2.new()
  |> array2.get(1)
  |> should.equal(Error(Nil))

  array2.new()
  |> array2.to_list
  |> should.equal([])
}

pub fn get_test() {
  [0, 1, 2]
  |> array2.from_list
  |> array2.get(0)
  |> should.equal(Ok(0))

  [0, 1, 2]
  |> array2.from_list
  |> array2.get(1)
  |> should.equal(Ok(1))

  [Nil]
  |> array2.from_list
  |> array2.get(at: 0)
  |> should.equal(Ok(Nil))
}

pub fn set_test() {
  [0, 1, 2]
  |> array2.from_list
  |> array2.set(0, 9001)
  |> array2.get(0)
  |> should.equal(Ok(9001))

  [0, 1, 2]
  |> array2.from_list
  |> array2.set(0, 9001)
  |> array2.get(1)
  |> should.equal(Ok(1))

  [0]
  |> array2.from_list
  |> array2.set(2, 2)
  |> array2.get(2)
  |> should.equal(Ok(2))

  [0]
  |> array2.from_list
  |> array2.set(2, 2)
  |> array2.get(1)
  |> should.equal(Error(Nil))

  array2.new()
  |> array2.set(at: 0, to: 0)
  |> array2.get(at: 0)
  |> should.equal(Ok(0))
}

pub fn size_test() {
  array2.new()
  |> array2.set(at: 1, to: 1)
  |> array2.set(at: 3, to: 3)
  |> array2.size
  |> should.equal(4)
}

pub fn count_test() {
  array2.new()
  |> array2.set(at: 1, to: 1)
  |> array2.set(at: 3, to: 3)
  |> array2.count
  |> should.equal(2)
}

pub fn fold_test() {
  []
  |> array2.from_list
  |> array2.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([])

  [1, 2, 3, 4]
  |> array2.from_list
  |> array2.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([4, 3, 2, 1])

  [4, 3, 2, 1]
  |> array2.from_list
  |> array2.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([1, 2, 3, 4])
}

pub fn fold_right_test() {
  []
  |> array2.from_list
  |> array2.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([])

  [1, 2, 3, 4]
  |> array2.from_list
  |> array2.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([1, 2, 3, 4])

  [4, 3, 2, 1]
  |> array2.from_list
  |> array2.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([4, 3, 2, 1])
}

if erlang {
  pub fn runtime_specific_test() {
    array2.new()
    |> array2.set(at: 1, to: Nil)
    |> array2.set(at: 3, to: Nil)
    |> array2.count
    |> should.equal(2)
  }
}

if javascript {
  pub fn runtime_specific_test() {
    array2.new()
    |> array2.set(at: 1, to: Nil)
    |> array2.set(at: 3, to: Nil)
    |> array2.count
    |> should.equal(0)
  }
}
