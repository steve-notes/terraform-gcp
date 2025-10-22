variable "instance_names" {
    type = list(string)
}

# variable "image_name" {
#     type = string
# }

# variable "machine_type" {
#   type = string
# }

# variable "default_disk_size" {
#   type = number
# }

variable "disk_size" {
  type = map(number)
  default = {}
}

# variable "default_disk_type"{
#     type = string
# }

# variable "disk_type" {
#     type = string
# }