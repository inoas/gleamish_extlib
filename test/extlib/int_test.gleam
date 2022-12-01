import extlib/int2
import gleeunit/should

pub fn add_test() {
  int2.add(-1, -1)
  |> should.equal(-2)

  int2.add(1, -1)
  |> should.equal(0)

  int2.add(0, -1)
  |> should.equal(-1)

  int2.add(0, 0)
  |> should.equal(0)

  int2.add(0, 1)
  |> should.equal(1)

  int2.add(1, 1)
  |> should.equal(2)
}

pub fn multiply_test() {
  int2.multiply(-1, -1)
  |> should.equal(1)

  int2.multiply(1, -1)
  |> should.equal(-1)

  int2.multiply(0, -1)
  |> should.equal(0)

  int2.multiply(0, 0)
  |> should.equal(0)

  int2.multiply(0, 1)
  |> should.equal(0)

  int2.multiply(1, 1)
  |> should.equal(1)

  int2.multiply(2, 2)
  |> should.equal(4)
}

pub fn subtract_test() {
  int2.subtract(-1, -1)
  |> should.equal(0)

  int2.subtract(1, -1)
  |> should.equal(2)

  int2.subtract(0, -1)
  |> should.equal(1)

  int2.subtract(0, 0)
  |> should.equal(0)

  int2.subtract(0, 1)
  |> should.equal(-1)

  int2.subtract(1, 1)
  |> should.equal(0)

  int2.subtract(2, 2)
  |> should.equal(0)

  0
  |> int2.subtract(subtrahend: 1)
  |> should.equal(-1)

  0
  |> int2.subtract(minuend: 1)
  |> should.equal(1)
}
