terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "servidor_lab" {
  name  = "servidor-lab"
  image = "nginx:alpine"
  ports {
    internal = 80
    external = 8082
  }
}
