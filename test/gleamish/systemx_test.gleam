import gleam/string
import gleamish/systemx
import gleeunit/should

pub fn unix_timestamp_test() {
  systemx.unix_timestamp()
  |> fn(ts) { ts > 1657797675 }
  |> should.be_true()
}

pub fn operating_system_test() {
  systemx.operating_system()
  |> fn(os) {
    os
    |> string.length > 2
  }
  |> should.be_true()
}
