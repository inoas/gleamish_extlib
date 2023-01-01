import gleamish/array_ex
import glacier/should

pub fn from_list_and_to_list_test() {
  [1, 2, 3]
  |> array_ex.from_list()
  |> array_ex.to_list
  |> should.equal([1, 2, 3])

  [0, 1, 2]
  |> array_ex.from_list()
  |> array_ex.set(at: 4, to: 4)
  |> array_ex.to_list
  |> should.equal([0, 1, 2, 4])

  [Nil]
  |> array_ex.from_list
  |> array_ex.to_list
  |> should.equal([Nil])
}

pub fn new_test() {
  array_ex.new()
  |> array_ex.get(1)
  |> should.equal(Error(Nil))

  array_ex.new()
  |> array_ex.to_list
  |> should.equal([])
}

pub fn get_test() {
  [0, 1, 2]
  |> array_ex.from_list
  |> array_ex.get(0)
  |> should.equal(Ok(0))

  [0, 1, 2]
  |> array_ex.from_list
  |> array_ex.get(1)
  |> should.equal(Ok(1))

  [Nil]
  |> array_ex.from_list
  |> array_ex.get(at: 0)
  |> should.equal(Ok(Nil))
}

pub fn set_test() {
  [0, 1, 2]
  |> array_ex.from_list
  |> array_ex.set(0, 9001)
  |> array_ex.get(0)
  |> should.equal(Ok(9001))

  [0, 1, 2]
  |> array_ex.from_list
  |> array_ex.set(0, 9001)
  |> array_ex.get(1)
  |> should.equal(Ok(1))

  [0]
  |> array_ex.from_list
  |> array_ex.set(2, 2)
  |> array_ex.get(2)
  |> should.equal(Ok(2))

  [0]
  |> array_ex.from_list
  |> array_ex.set(2, 2)
  |> array_ex.get(1)
  |> should.equal(Error(Nil))

  array_ex.new()
  |> array_ex.set(at: 0, to: 0)
  |> array_ex.get(at: 0)
  |> should.equal(Ok(0))
}

pub fn size_test() {
  array_ex.new()
  |> array_ex.set(at: 1, to: 1)
  |> array_ex.set(at: 3, to: 3)
  |> array_ex.size
  |> should.equal(4)
}

pub fn count_test() {
  array_ex.new()
  |> array_ex.set(at: 1, to: 1)
  |> array_ex.set(at: 3, to: 3)
  |> array_ex.count
  |> should.equal(2)
}

pub fn fold_test() {
  []
  |> array_ex.from_list
  |> array_ex.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([])

  [1, 2, 3, 4]
  |> array_ex.from_list
  |> array_ex.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([4, 3, 2, 1])

  [4, 3, 2, 1]
  |> array_ex.from_list
  |> array_ex.fold([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([1, 2, 3, 4])
}

pub fn fold_right_test() {
  []
  |> array_ex.from_list
  |> array_ex.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([])

  [1, 2, 3, 4]
  |> array_ex.from_list
  |> array_ex.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([1, 2, 3, 4])

  [4, 3, 2, 1]
  |> array_ex.from_list
  |> array_ex.fold_right([], fn(acc, elem) { [elem, ..acc] })
  |> should.equal([4, 3, 2, 1])
}

if erlang {
  pub fn runtime_specific_test() {
    array_ex.new()
    |> array_ex.set(at: 1, to: Nil)
    |> array_ex.set(at: 3, to: Nil)
    |> array_ex.count
    |> should.equal(2)
  }
}

if javascript {
  pub fn runtime_specific_test() {
    array_ex.new()
    |> array_ex.set(at: 1, to: Nil)
    |> array_ex.set(at: 3, to: Nil)
    |> array_ex.count
    |> should.equal(0)
  }
}
