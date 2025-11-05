output "firewall_rules" {
  description = "Map of created firewall rules"
  value = {
    for name, rule in google_compute_firewall.k8s_firewall :
    name => {
      id     = rule.id
      name   = rule.name
      network = rule.network
    }
  }
}

output "firewall_rule_names" {
  description = "List of firewall rule names"
  value = [for rule in google_compute_firewall.k8s_firewall : rule.name]
}

