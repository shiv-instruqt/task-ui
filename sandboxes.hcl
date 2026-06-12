resource "network" "task-vpc" {
  subnet = "10.100.100.0/24"
}

resource "container" "task-1" {
  network {
    id = resource.network.task-vpc.meta.id
  }
  image {
    name = "ubuntu:22.04"
  }
  environment = {
    "Docker_user" = "shivtushal"
    "Docker_pass" = "@GOODgod97"
  }
  port {
    local    = "80"
    protocol = "tcp"
  }
  port {
    local    = "5000"
    protocol = "tcp"
  }
  privileged = false
  resources {
    cpu    = 1000
    memory = 256
  }
  run_as {
    user  = "root"
    group = "root"
  }
}
