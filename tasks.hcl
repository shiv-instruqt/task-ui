resource "task" "scriptdocker" {
  description = "jyfgyuyfyfygy"
  config {
    parallel_exec {
      setup     = true
      condition = false
      check     = false
      solve     = false
      cleanup   = false
    }
    target = resource.container.task-1
  }
  condition "condition-1" {
    description = "hbnhb hb"
    setup {
      script = "scripts/task/scriptdocker/untitled-condition-1_setup0"
    }
  }
}

