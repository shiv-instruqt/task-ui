resource "task" "docker-ui" {
  description = "rrrr"
  config {
    target = resource.container.task-1
    parallel_exec {
      condition = false
      check     = false
      solve     = false
      setup     = false
      cleanup   = false
    }
  }
}
