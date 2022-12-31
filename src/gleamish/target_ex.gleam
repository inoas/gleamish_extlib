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

  pub external fn is_browser() -> Bool =
    "../gleamish_extlib.mjs" "is_browser"

  pub external fn is_web_worker() -> Bool =
    "../gleamish_extlib.mjs" "is_web_worker"

  pub external fn is_node_js() -> Bool =
    "../gleamish_extlib.mjs" "is_nodejs"

  pub external fn is_deno() -> Bool =
    "../gleamish_extlib.mjs" "is_deno"

  pub external fn has_dom() -> Bool =
    "../gleamish_extlib.mjs" "has_dom"
}
