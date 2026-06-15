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
  condition "untitled-condition-1" {
    description = "script"
    config {
      target = resource.container.task-1
    }
    setup {
      script = "scripts/task/docker-ui/untitled-condition-1_setup0"
    }
  }
}
