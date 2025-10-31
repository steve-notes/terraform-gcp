output "instance_names" {
  description = "Nama instance yang berhasil dibuat."
  value       = module.compute.instance_tags
}

output "instance_external_ips" {
  description = "Ephemeral external IP per instance."
  value       = module.compute.instance_external_ips
}

output "instance_report" {
  description = "Ringkasan nama dan IP instance untuk ditampilkan di terminal."
  value = [
    for name, ip in module.compute.instance_external_ips :
    format("%s: %s", name, coalesce(ip, "no external IP assigned"))
  ]
}
