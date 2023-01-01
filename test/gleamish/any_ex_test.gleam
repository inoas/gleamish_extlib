import gleamish/any_ex
import glacier/should

pub fn tap_test() {
  "Thanks Joe & Louis"
  |> any_ex.tap(fn(s: String) { s <> "... and Jose!" })
  |> should.equal("Thanks Joe & Louis")
}

pub fn equals_test() {
  "a"
  |> any_ex.equals("a")
  |> should.be_true

  "a"
  |> any_ex.equals(to: "b")
  |> should.be_false
}

pub fn differs_test() {
  "a"
  |> any_ex.differs("a")
  |> should.be_false

  "a"
  |> any_ex.differs(from: "b")
  |> should.be_true
}
