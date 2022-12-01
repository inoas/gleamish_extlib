import extlib/float2
import gleeunit/should

pub fn add_test() {
  float2.add(-1.0, -1.0)
  |> should.equal(-2.0)

  float2.add(1.0, -1.0)
  |> should.equal(0.0)

  float2.add(0.0, -1.0)
  |> should.equal(-1.0)

  float2.add(0.0, 0.0)
  |> should.equal(0.0)

  float2.add(0.0, 1.0)
  |> should.equal(1.0)

  float2.add(1.0, 1.0)
  |> should.equal(2.0)
}

pub fn multiply_test() {
  float2.multiply(-1.0, -1.0)
  |> should.equal(1.0)

  float2.multiply(1.0, -1.0)
  |> should.equal(-1.0)

  float2.multiply(0.0, -1.0)
  |> should.equal(0.0)

  float2.multiply(0.0, 0.0)
  |> should.equal(0.0)

  float2.multiply(0.0, 1.0)
  |> should.equal(0.0)

  float2.multiply(1.0, 1.0)
  |> should.equal(1.0)

  float2.multiply(2.0, 2.0)
  |> should.equal(4.0)
}

pub fn subtract_test() {
  float2.subtract(-1.0, -1.0)
  |> should.equal(0.0)

  float2.subtract(1.0, -1.0)
  |> should.equal(2.0)

  float2.subtract(0.0, -1.0)
  |> should.equal(1.0)

  float2.subtract(0.0, 0.0)
  |> should.equal(0.0)

  float2.subtract(0.0, 1.0)
  |> should.equal(-1.0)

  float2.subtract(1.0, 1.0)
  |> should.equal(0.0)

  float2.subtract(2.0, 2.0)
  |> should.equal(0.0)

  0.0
  |> float2.subtract(subtrahend: 1.0)
  |> should.equal(-1.0)

  0.0
  |> float2.subtract(minuend: 1.0)
  |> should.equal(1.0)
}
