pub type Target {
  ErlangTarget
  JavaScriptTarget
}

/// Returns the current target platfrom at runtime:
///
/// ## Examples
///
/// ```gleam
/// > target()
/// ErlangTarget
/// ```
///
/// ```gleam
/// > target()
/// JavaScriptTarget
/// ```
///
pub fn target() -> Target {
  do_target()
}

if erlang {
  fn do_target() -> Target {
    ErlangTarget
  }
}

if javascript {
  fn do_target() -> Target {
    JavaScriptTarget
  }

  external fn is_browser() -> Bool =
    "../gleamish_extlib.mjs" "is_browser"

  external fn is_web_worker() -> Bool =
    "../gleamish_extlib.mjs" "is_web_worker"

  external fn is_node_js() -> Bool =
    "../gleamish_extlib.mjs" "is_nodejs"

  external fn is_deno() -> Bool =
    "../gleamish_extlib.mjs" "is_deno"

  external fn has_dom() -> Bool =
    "../gleamish_extlib.mjs" "has_dom"
}
