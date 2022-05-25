resource "civo_firewall_rule" "net_rule" {

  count = length(var.map_rules.action)

  firewall_id = civo_firewall.this.id
  region      = civo_firewall.this.region

  action     = var.map_rules.action[count.index]
  protocol   = var.map_rules.protocol[count.index]
  start_port = var.map_rules.start_port[count.index]
  end_port   = var.map_rules.end_port[count.index]
  cidr       = ["${var.map_rules.cidr[count.index]}"]
  direction  = var.map_rules.direction[count.index]
  label      = "${var.label}_${count.index}"

  depends_on = [
    civo_firewall.this
  ]
}

# rules = {
#   action     = ["allow", "allow"]
#   protocol   = ["tcp", "tcp"]
#   start_port = ["80", "443"]
#   end_port   = ["80", "443"]
#   cidr       = [["0.0.0.0/0"], ["0.0.0.0/0"]]
#   direction  = ["ingress", "ingress"]
# }