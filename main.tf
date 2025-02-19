module "compute" {
  source         = "./compute"
  #instance_names = var.instance_names
}

module "firewall" {
  source        = "./firewall" 
  #network       = var.network
  #source_ranges = var.source_ranges
  #target_tags   = [module.compute.instance_tags]
  target_tags   = tolist(module.compute.instance_tags)
  #rules         = var.rules
}

