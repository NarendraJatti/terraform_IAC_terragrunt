provider "docker" {
  host = "tcp://localhost:2375/"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "example"
  ports {
    internal = 80
    external = 8000
  }
}
