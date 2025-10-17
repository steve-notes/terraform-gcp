resource "google_compute_instance" "vm_instance" {
  #name          = "master-node"
  count         = length(var.instance_names)
  # for_each      = toset(var.instance_names)
  name          = var.instance_names[count.index] 
  # name          = each.key
  machine_type  = var.machine_type
  zone          = "us-central1-a"
  tags          = ["http", "https","lb-health-check", "http-server", "https-server", var.instance_names[count.index]]
  # tags          = ["http", "https","lb-health-check", each.key]


  # Skip Creating Intances if not in the list
  lifecycle {
    prevent_destroy = false
    create_before_destroy = true
  }

  boot_disk {
    initialize_params {
      image = var.image_name
      # size = "50"
      # type = "pd-balanced"
      size = lookup(var.disk_size, var.instance_names[count.index], var.default_disk_size) 
      type = lookup(var.disk_type, var.instance_names[count.index], var.default_disk_type) 
      # size = lookup(var.disk_size, each.key, var.default_disk_size)
      # type = lookup(var.disk_type, each.key, var.default_disk_type)
    }
}


network_interface {
  network = "default"
  access_config {
    # use this for static ip ## issue can't add this for multiple instance
    #nat_ip = google_compute_address.static_ip.address 
   
    # for multiple instance, use this 
    #nat_ip = google_compute_address.static_ipi[count.index].address 
  }
}
}

resource "google_compute_address" "static_ip" {
  name = "master-node-ip"
  region = "us-central1"
}
