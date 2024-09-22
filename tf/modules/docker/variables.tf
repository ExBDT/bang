variable "image" {
  description = "The Docker image to use"
  type        = string
}

variable "name" {
  description = "The name of the Docker container"
  type        = string
}

variable "internal_port" {
  description = "The internal port the container exposes"
  type        = number
}

variable "external_port" {
  description = "The external port to map"
  type        = number
}

variable "env" {
  description = "Environment variables for the container"
  type        = list(string)
  default     = []
}
