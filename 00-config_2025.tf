terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.26.0"
    }
  }
}

variable "provider_host" {}
variable "provider_port" {}
variable "provider_database" {}
variable "provider_username" {}
variable "provider_password" {}
variable "provider_sslmode" {}
variable "provider_connect_timeout" {}

provider "postgresql" {
  host            = var.provider_host
  port            = var.provider_port
  database        = var.provider_database
  username        = var.provider_username
  password        = var.provider_password
  sslmode         = var.provider_sslmode
  connect_timeout = var.provider_connect_timeout
  superuser       = false
}
