import extlib/system
import gleeunit/should
import gleam/string

pub fn unix_timestamp_test() {
  system.unix_timestamp()
  |> fn(ts) { ts > 1657797675 }
  |> should.be_true()
}

pub fn operating_system_test() {
  system.operating_system()
  |> fn(os) {
    os
    |> string.length > 2
  }
  |> should.be_true()
}
