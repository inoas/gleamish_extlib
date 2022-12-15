pub fn unix_timestamp() {
  do_unix_timestamp()
}

if erlang {
  external fn do_unix_timestamp() -> Int =
    "gleamish_extlib" "unix_timestamp"
}

if javascript {
  external fn do_unix_timestamp() -> Int =
    "../gleamish_extlib.mjs" "unix_timestamp"
}

pub fn operating_system() {
  do_operating_system()
}

if erlang {
  external fn do_operating_system() -> String =
    "gleamish_extlib" "operating_system"
}

if javascript {
  external fn do_operating_system() -> String =
    "../gleamish_extlib.mjs" "operating_system"
}
