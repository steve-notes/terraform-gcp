resource "google_compute_instance" "vm_instance" {
  #name          = "master-node"
  count         = length(var.instance_names)
  name          = var.instance_names[count.index] 
  machine_type  = "var.machine_type"
  zone          = "us-central1-a"
  tags          = ["http", "https","lb-health-check", var.instance_names[count.index]]

  boot_disk {
    initialize_params {
      image = var.image_name
      size = "100"
      type = "pd-balanced"
    }
}


network_interface {
  network = "default"
  access_config {
    nat_ip = google_compute_address.static_ip.address
  }
}
}

resource "google_compute_address" "static_ip" {
  name = "master-node-ip"
  region = "us-central1"
}
