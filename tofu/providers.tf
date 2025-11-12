terraform {
  required_version = ">= 1.6"

  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "3.3.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.1.0"
    }
    pwpush = {
      source  = "grulicht/pwpush"
      version = "0.1.2"
    }
  }
}

provider "openstack" {
  # Authentication details should be provided via environment variables or a separate file
}
