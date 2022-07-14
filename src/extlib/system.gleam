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
