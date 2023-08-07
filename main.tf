resource "docker_image" "node" {
  name = "node"
  build {
    context = "."
  }
}

resource "docker_container" "node_container" {
  name  = "node_container"
  image = docker_image.node.image_id
  ports {
    internal = 3000
    external = 8020
  }
}