import extlib/system
import gleeunit/should

pub fn unix_timestamp_test() {
  system.unix_timestamp()
  |> fn(ts) { ts > 1657797675 }
  |> should.be_true()
}
