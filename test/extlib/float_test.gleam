import extlib/float
import gleeunit/should

pub fn add_test() {
  float.add(-1., -1.)
  |> should.equal(-2.)

  float.add(1., -1.)
  |> should.equal(0.)

  float.add(0., -1.)
  |> should.equal(-1.)

  float.add(0., 0.)
  |> should.equal(0.)

  float.add(0., 1.)
  |> should.equal(1.)

  float.add(1., 1.)
  |> should.equal(2.)
}

pub fn multiply_test() {
  float.multiply(-1., -1.)
  |> should.equal(1.)

  float.multiply(1., -1.)
  |> should.equal(-1.)

  float.multiply(0., -1.)
  |> should.equal(0.)

  float.multiply(0., 0.)
  |> should.equal(0.)

  float.multiply(0., 1.)
  |> should.equal(0.)

  float.multiply(1., 1.)
  |> should.equal(1.)

  float.multiply(2., 2.)
  |> should.equal(4.)
}

pub fn subtract_test() {
  float.subtract(-1., -1.)
  |> should.equal(0.)

  float.subtract(1., -1.)
  |> should.equal(2.)

  float.subtract(0., -1.)
  |> should.equal(1.)

  float.subtract(0., 0.)
  |> should.equal(0.)

  float.subtract(0., 1.)
  |> should.equal(-1.)

  float.subtract(1., 1.)
  |> should.equal(0.)

  float.subtract(2., 2.)
  |> should.equal(0.)

  0.
  |> float.subtract(subtrahend: 1.)
  |> should.equal(-1.)

  0.
  |> float.subtract(minuend: 1.)
  |> should.equal(1.)
}
