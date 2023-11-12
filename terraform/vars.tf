variable "cloud_init_template" {
  type        = string
  description = "Name of the cloud-init template to use"
  default     = "debian-12-generic-amd64"
}

variable "username" {
  type        = string
  description = "Username of the cloud-init user"
  default = "fmaury"
  sensitive   = true
}

variable "ssh_public_key" {
  type        = string
  description = "Public SSH Key to add to authorized keys"
  sensitive   = true
}

variable "gateway_ip" {
  type        = string
  description = "IP of gateway"
}

variable "pm_user" {
  description = "The username for the proxmox user"
  type        = string
  sensitive   = false
  default     = "fmaury@pam"

}
variable "pm_password" {
  description = "The password for the proxmox user"
  type        = string
  sensitive   = true
}

variable "pm_tls_insecure" {
  description = "Set to true to ignore certificate errors"
  type        = bool
  default     = false
}

variable "pm_host" {
  description = "api prox node"
  type = string
  sensitive = false
}

variable "vms" {
  type = list(object({
    name      = string
    pve_node  = string
    desc      = string
    ip        = string
    memory    = number
    cores     = number
    disk_size = string
  }))
  default = []
}
