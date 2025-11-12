terraform {
  required_version = ">= 1.6"

  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "3.4.0"
    }
  }
}

variable "ip_count" {
  description = "Number of IP reservations"
  type        = number
}

data "openstack_networking_network_v2" "this" {
  name = "DHBW"
}

resource "openstack_networking_port_v2" "this" {
  count = var.ip_count

  name       = format("reserved-%03d", count.index)
  network_id = data.openstack_networking_network_v2.this.id

  tags        = ["reserved-by=timebertt"]
  description = "Reserved by Tim Ebert for the Data Engineering Course"
}
