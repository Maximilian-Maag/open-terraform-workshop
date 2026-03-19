variable "linode_token" {
  description = "Linode API token"
  type        = string
  sensitive   = true
}

variable "root_pass" {
  description = "Root password for the instance"
  type        = string
  sensitive   = true
}