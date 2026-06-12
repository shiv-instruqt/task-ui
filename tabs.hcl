resource "terminal" "terminal" {
  target = resource.container.task-1
}

resource "service" "application" {
  target = resource.container.task-1
  port   = 5000
}
