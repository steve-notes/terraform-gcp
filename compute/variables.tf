variable "instance_names" {
  type = list(string) 
  #default = ["masternode", "workernode1", "workernode2"]
  default = ["masternode"]
}

variable "image_name" {
  type = string
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}

variable "machine_type" {
  type = string
  default = "e2-standard-2"
}



