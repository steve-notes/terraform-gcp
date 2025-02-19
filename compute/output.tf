# if only have 1 instance 
#output "instance_tags" {
  #value = google_compute_instance.vm_instance[0].name
#}

# if have multiple instance
output "instance_tags" {
  value = flatten([for instance in google_compute_instance.vm_instance : instance.name])
}
