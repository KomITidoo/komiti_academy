variable "docker_host" {
  type        = string
  description = "Docker Desktop engine host. Windows default uses the Docker named pipe."
  default     = "npipe:////./pipe/docker_engine"
}

variable "project_name" {
  type        = string
  description = "Naming prefix for local Docker resources."
  default     = "komiti-academy"
}

variable "env" {
  type        = string
  description = "Local environment name."
  default     = "dev"
}

variable "odoo_image" {
  type        = string
  description = "Odoo Docker image."
  default     = "odoo:19.0"
}

variable "postgres_image" {
  type        = string
  description = "Postgres Docker image."
  default     = "postgres:16"
}

variable "odoo_port" {
  type        = number
  description = "Host port for the local Odoo UI."
  default     = 8067
}

variable "postgres_db" {
  type        = string
  description = "Initial Postgres database used for bootstrap and health checks; keep this as 'postgres' so the Odoo app database is created later through the UI."
  default     = "postgres"
}

variable "postgres_user" {
  type        = string
  description = "Postgres user used by Odoo."
  default     = "odoo"
}

variable "postgres_password" {
  type        = string
  description = "Local DEV Postgres password used by Odoo."
  sensitive   = true
}
