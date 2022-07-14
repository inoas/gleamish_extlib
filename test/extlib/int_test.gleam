import extlib/int
import gleeunit/should

pub fn add_test() {
  int.add(-1, -1)
  |> should.equal(-2)

  int.add(1, -1)
  |> should.equal(0)

  int.add(0, -1)
  |> should.equal(-1)

  int.add(0, 0)
  |> should.equal(0)

  int.add(0, 1)
  |> should.equal(1)

  int.add(1, 1)
  |> should.equal(2)
}

pub fn multiply_test() {
  int.multiply(-1, -1)
  |> should.equal(1)

  int.multiply(1, -1)
  |> should.equal(-1)

  int.multiply(0, -1)
  |> should.equal(0)

  int.multiply(0, 0)
  |> should.equal(0)

  int.multiply(0, 1)
  |> should.equal(0)

  int.multiply(1, 1)
  |> should.equal(1)

  int.multiply(2, 2)
  |> should.equal(4)
}

pub fn subtract_test() {
  int.subtract(-1, -1)
  |> should.equal(-2)

  int.subtract(1, -1)
  |> should.equal(0)

  int.subtract(0, -1)
  |> should.equal(-1)

  int.subtract(0, 0)
  |> should.equal(0)

  int.subtract(0, 1)
  |> should.equal(-1)

  int.subtract(1, 1)
  |> should.equal(0)

  int.subtract(2, 2)
  |> should.equal(0)

  0
  |> int.subtract(subtrahend: 1)
  |> should.equal(-1)

  0
  |> int.subtract(minuend: 1)
  |> should.equal(1)
}
