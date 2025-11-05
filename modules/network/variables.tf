# Network module variables
# This module can be extended in the future for custom VPC creation

variable "network_name" {
  description = "Name of the VPC network"
  type        = string
  default     = "default"
}

