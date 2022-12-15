import gleamish/intx
import gleeunit/should

pub fn absolute_difference_test() {
  intx.absolute_difference(0, 0)
  |> should.equal(0)

  intx.absolute_difference(1, 2)
  |> should.equal(1)

  intx.absolute_difference(2, 1)
  |> should.equal(1)

  intx.absolute_difference(-1, 0)
  |> should.equal(1)

  intx.absolute_difference(0, -1)
  |> should.equal(1)

  intx.absolute_difference(10, 20)
  |> should.equal(10)

  intx.absolute_difference(-10, -20)
  |> should.equal(10)

  intx.absolute_difference(-10, 10)
  |> should.equal(20)
}
