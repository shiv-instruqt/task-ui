resource "lab" "main" {
  title       = "shiv-task1-UI flow"
  description = "# Preparing the Flask Application Environment\n\nPlease wait while the lab environment is being configured.\n\nThe following setup tasks are being performed automatically:\n\n✅ Preparing the Linux environment\n\n✅ Verifying Python installation\n\n✅ Installing required Python packages\n\n✅ Installing Flask framework\n\n✅ Creating the Flask application file\n\n✅ Configuring the web server\n\n✅ Starting the Flask application on port 5000\n\n✅ Discovering server network information\n\n✅ Enabling API endpoints\n\n✅ Performing application health checks\n\n---\n\n### Application Details\n\nThis lab deploys a Flask-based web application that:\n\n- Displays server private and public IP addresses\n- Provides REST API endpoints\n- Hosts a modern Year Converter web interface\n- Listens on port **5000**\n- Serves requests from all network interfaces (`0.0.0.0`)\n\n---\n\n### Endpoints Available\n\n| Endpoint | Description |\n|-----------|-------------|\n| `/` | Year Converter Web Application |\n| `/api/server-info` | Returns server IP information |\n\n---\n\n⏳ Environment setup may take a few moments.\n\nOnce the setup is complete, move to the **Terminal** tab and follow the lab instructions to launch the application."

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
  content {
    chapter "__default" {
      title = "Default"
      page "instruction" {
        title     = "instruction"
        reference = resource.page.instruction
      }
    }
  }
}
