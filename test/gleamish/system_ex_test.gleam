import gleam/string
import gleamish/system_ex
import gleeunit/should

pub fn unix_timestamp_test() {
  system_ex.unix_timestamp()
  |> fn(ts) { ts > 1_657_797_675 }
  |> should.be_true()
}

pub fn operating_system_test() {
  system_ex.operating_system()
  |> fn(os) {
    os
    |> string.length > 2
  }
  |> should.be_true()
}
