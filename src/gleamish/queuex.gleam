import gleam/queue

/// Same as `queue.length`.
/// However `length` communicates a static property where in fact counting
/// the length of a single linked queue is an expensive operation.
///
pub fn count(l: queue.Queue(any)) -> Int {
  queue.length(l)
}
