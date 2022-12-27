import gleam/queue
import gleamish/queue_ex
import gleeunit/should

pub fn count_test() {
  let q = queue.from_list([])
  queue_ex.count(q)
  |> should.equal(queue.length(q))

  let q = queue.from_list([1])
  queue_ex.count(q)
  |> should.equal(queue.length(q))

  let q = queue.from_list([1, 2, 3])
  queue_ex.count(q)
  |> should.equal(queue.length(q))

  queue.from_list([])
  |> queue_ex.count()
  |> should.equal(0)

  queue.from_list([1])
  |> queue_ex.count()
  |> should.equal(1)

  queue.from_list([1, 2, 3])
  |> queue_ex.count()
  |> should.equal(3)
}
