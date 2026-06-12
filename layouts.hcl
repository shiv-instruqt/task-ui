
resource "layout" "single_panel" {
  column {
    width = "100"
    tab "application" {
      title  = "application"
      target = resource.service.application
    }
    tab "terminal" {
      title  = "terminal"
      target = resource.terminal.terminal
    }
  }
}
