import gleamish/floatx
import gleeunit/should

pub fn absolute_difference_test() {
  floatx.absolute_difference(0.0, 0.0)
  |> should.equal(0.0)

  floatx.absolute_difference(1.0, 2.0)
  |> should.equal(1.0)

  floatx.absolute_difference(2.0, 1.0)
  |> should.equal(1.0)

  floatx.absolute_difference(-1.0, 0.0)
  |> should.equal(1.0)

  floatx.absolute_difference(0.0, -1.0)
  |> should.equal(1.0)

  floatx.absolute_difference(10.0, 20.0)
  |> should.equal(10.0)

  floatx.absolute_difference(-10.0, -20.0)
  |> should.equal(10.0)

  floatx.absolute_difference(-10.5, 10.5)
  |> should.equal(21.0)
}
