output "firewall_name" {
  value       = civo_firewall.this.name
  description = "Firewall Name"
}

output "firewall_region" {
  value       = civo_firewall.this.region
  description = "Firewall Region"
}

output "firewall_id" {
  value       = civo_firewall.this.id
  description = "Firewall ID"
}

output "firewall_network_id" {
  value       = civo_firewall.this.network_id
  description = "Firewall Network ID"
}

output "firewall_create_default_rules" {
  value       = civo_firewall.this.create_default_rules
  description = "Firewall Default Rules ?"
}