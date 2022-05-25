variable "map_rules" {
  type        = map(any)
  description = "Firewall rules"
  default   = {}
}

variable "firewall_name" {
  type        = string
  description = "Firewall Name"
  default     = ""
}

variable "network_id" {
  type        = string
  description = "Network ID"
  default     = ""
}

variable "region" {
  type        = string
  description = "The region in which the cluster should be created. ( _e.g._ `NYC1`, `LON1`, `VAL1`, `FRA1`)"
  default     = "NYC1"
}

variable "label" {
  type        = string
  description = "Firewall Label"
  default     = ""
}