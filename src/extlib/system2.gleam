pub fn unix_timestamp() {
  do_unix_timestamp()
}

if erlang {
  external fn do_unix_timestamp() -> Int =
    "extlib" "unix_timestamp"
}

if javascript {
  external fn do_unix_timestamp() -> Int =
    "../extlib.mjs" "unix_timestamp"
}

pub fn operating_system() {
  do_operating_system()
}

if erlang {
  external fn do_operating_system() -> String =
    "extlib" "operating_system"
}

if javascript {
  external fn do_operating_system() -> String =
    "../extlib.mjs" "operating_system"
}
