resource "google_compute_instance" "vm_instance" {
  name      = "master-node"
  machine_type = "var.machine_type"

  boot_disk {
    initialize_params {
      image = var.image_name
      size = "20"
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
