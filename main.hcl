resource "lab" "main" {
  title       = "shiv-task1-UI flow"
  description = "# Preparing the Flask Application Environment\n\nPlease wait while the lab environment is being configured.\n\nThe following tasks are being performed automatically:\n\n✅ Updating package repositories\n\n✅ Installing Python 3 and pip\n\n✅ Installing the Nano text editor\n\n✅ Installing the Flask framework\n\n✅ Creating the Flask application file\n\n✅ Configuring application dependencies\n\n✅ Starting the Flask web server\n\n✅ Binding the application to port 5000\n\n✅ Discovering server IP information\n\n✅ Enabling REST API endpoints\n\n✅ Performing application health checks\n\n---\n\n## Application Overview\n\nThis lab deploys a Flask-based web application that:\n\n- Displays the server's private and public IP addresses\n- Provides REST API endpoints for server information\n- Hosts a modern Year Converter web application\n- Runs directly on Python without Docker\n- Listens on port **5000**\n- Accepts requests from all network interfaces (`0.0.0.0`)\n\n---\n\n## Available Endpoints\n\n| Endpoint | Description |\n|-----------|-------------|\n| `/` | Year Converter Web Application |\n| `/api/server-info` | Returns server IP information in JSON format |\n\n---\n\n## What You Will Learn\n\n- Installing Python packages using pip\n- Deploying a Flask application\n- Running a web server on Linux\n- Accessing applications through a browser\n- Testing REST APIs using curl\n- Working with application networking and ports\n\n---\n\n⏳ Environment setup may take a few moments.\n\nOnce the setup is complete, move to the **Terminal** tab and follow the instructions to deploy and run the Flask application."

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
        title     = "Instruction"
        reference = resource.page.instruction
      }
    }
  }
}
