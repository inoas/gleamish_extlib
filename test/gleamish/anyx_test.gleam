import gleamish/anyx
import gleeunit/should

pub fn tap_test() {
  "Thanks Joe & Louis"
  |> anyx.tap(fn(s: String) { s <> "... and Jose!" })
  |> should.equal("Thanks Joe & Louis")
}

pub fn equals_test() {
  "a"
  |> anyx.equals("a")
  |> should.be_true

  "a"
  |> anyx.equals(to: "b")
  |> should.be_false
}

pub fn differs_test() {
  "a"
  |> anyx.differs("a")
  |> should.be_false

  "a"
  |> anyx.differs(from: "b")
  |> should.be_true
}
