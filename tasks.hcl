resource "task" "docker-ui" {
  description = "qqqqqqqqqqqq"
  config {
    target = resource.container.task-1
  }
}
