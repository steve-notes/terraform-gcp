module "compute" {
  source         = "./modules/compute"
  instance_names = var.instance_names
  disk_size      = var.disk_size
}

# uncomment this if want to use custom firewall module
# module "firewall" {
#   source        = "./modules/firewall" 
#   #network       = var.network
#   #source_ranges = var.source_ranges
#   #target_tags   = [module.compute.instance_tags]
#   target_tags   = tolist(module.compute.instance_tags)
#   #rules         = var.rules
# }


## Variable Declared
#variable "instance_names" {}
#variable "network" {}
#variable "source_ranges" {}
#variable "rules" {}

