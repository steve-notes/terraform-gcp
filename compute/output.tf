output "instance_tags" {
  value = google_compute_instance.vm_instance[0].name
}
