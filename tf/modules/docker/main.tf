resource "docker_image" "container_image" {
  name         = var.image
  keep_locally = true
}

resource "docker_container" "container" {
  name  = var.name
  image = docker_image.container_image.image_id

  ports {
    internal = var.internal_port
    external = var.external_port
  }

  env = var.env
}
