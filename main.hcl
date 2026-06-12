resource "lab" "main" {
  title       = "shiv-task1-UI flow"
  description = ""

  layout = resource.layout.single_panel

  settings {
    theme = "modern-dark"

    timelimit {
      duration   = "30m"
      show_timer = true
    }

    idle {
      enabled      = true
      timeout      = "10m"
      show_warning = true
    }

    controls {
      show_stop = true
    }
  }
}
