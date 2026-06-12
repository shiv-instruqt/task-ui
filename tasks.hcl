resource "task" "docker-ui" {
  description = "rrrr"
  config {
    target = resource.container.task-1
  }
}
