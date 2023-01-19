if erlang {
  import gleam/int
  import gleam/list
  import glychee/benchmark

  pub fn main() {
    benchmark.run(
      [
        benchmark.Function(
          label: "list.sort()",
          callable: fn(test_data) { fn() { list.sort(test_data, int.compare) } },
        ),
      ],
      [
        benchmark.Data(label: "pre-sorted list", data: list.range(1, 100_000)),
        benchmark.Data(
          label: "reversed list",
          data: list.range(1, 100_000)
          |> list.reverse,
        ),
      ],
    )
  }
}
