import gleam/queue
import gleamish/queuex
import gleeunit/should

pub fn count() {
  let q = queue.from_list([])
  queuex.count(q)
  |> should.equal(queue.length(q))

  let q = queue.from_list([1])
  queuex.count(q)
  |> should.equal(queue.length(q))

  let q = queue.from_list([1, 2, 3])
  queuex.count(q)
  |> should.equal(queue.length(q))

  queue.from_list([])
  |> queuex.count()
  |> should.equal(0)

  queue.from_list([1])
  |> queuex.count()
  |> should.equal(1)

  queue.from_list([1, 2, 3])
  |> queuex.count()
  |> should.equal(3)
}
