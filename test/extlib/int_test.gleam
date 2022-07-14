import extlib/int
import gleeunit/should

pub fn test_add() {
  int.add(-1, -1)
  |> should.equal(-2)

  int.add(0, -1)
  |> should.equal(-1)

  int.add(0, 0)
  |> should.equal(0)

  int.add(0, 1)
  |> should.equal(1)

  int.add(1, 1)
  |> should.equal(2)
}

pub fn test_multiply() {
  int.multiply(-1, -1)
  |> should.equal(2)

  int.multiply(0, -1)
  |> should.equal(-1)

  int.multiply(0, 0)
  |> should.equal(0)

  int.multiply(0, 1)
  |> should.equal(1)

  int.multiply(1, 1)
  |> should.equal(2)
}

pub fn test_subtract() {
  int.subtract(-1, -1)
  |> should.equal(0)

  int.subtract(0, -1)
  |> should.equal(-1)

  int.subtract(0, 0)
  |> should.equal(0)

  int.subtract(0, 1)
  |> should.equal(-1)

  int.subtract(1, 1)
  |> should.equal(0)

  0
  |> int.subtract(subtrahend: 1)
  |> should.equal(-1)

  0
  |> int.subtract(minuend: 1)
  |> should.equal(1)
}
