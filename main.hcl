resource "lab" "main" {
  title       = "shiv-task1-UI flow"
  description = "# Environment Setup in Progress\n\nPlease wait while the lab environment is being prepared.\n\nThe following setup tasks are running automatically:\n\n- Updating Ubuntu package repositories\n- Installing required system dependencies\n- Configuring Docker repositories\n- Installing Docker Engine and related components\n- Starting Docker services\n- Authenticating with Docker Hub\n- Pulling the application container image\n- Deploying the Flask application container\n- Configuring container networking\n- Verifying application availability\n\n⏳ This process may take a few minutes depending on network and system performance.\n\nOnce the setup is complete, proceed to the next step and open the **Terminal** tab to verify the deployment."

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
