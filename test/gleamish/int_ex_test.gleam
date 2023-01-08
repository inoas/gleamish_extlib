import gleamish/int_ex
import gleeunit/should

pub fn absolute_difference_test() {
  int_ex.absolute_difference(0, 0)
  |> should.equal(0)

  int_ex.absolute_difference(1, 2)
  |> should.equal(1)

  int_ex.absolute_difference(2, 1)
  |> should.equal(1)

  int_ex.absolute_difference(-1, 0)
  |> should.equal(1)

  int_ex.absolute_difference(0, -1)
  |> should.equal(1)

  int_ex.absolute_difference(10, 20)
  |> should.equal(10)

  int_ex.absolute_difference(-10, -20)
  |> should.equal(10)

  int_ex.absolute_difference(-10, 10)
  |> should.equal(20)
}
