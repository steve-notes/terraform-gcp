variable "instance_names" {
  type = string
  default = ["masternode", "workernode1", "workernode2"]
}

variable "image_name" {
  type = string
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "machine_type" {
  type = string
  default = "e2-standart-2"
}



