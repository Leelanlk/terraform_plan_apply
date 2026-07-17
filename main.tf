terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.54.0"
    }
  }
}

provider "azurerm" {
  features{}
}

resource "azurerm_eventhub_namespace" "eventhubnamespace" {
  name                          = var.azurerm_eventhub_namespace_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  sku                           = var.sku
  capacity                      = var.capacity
  auto_inflate_enabled          = var.auto_inflate_enabled
  maximum_throughput_units      = var.maximum_throughput_units
  public_network_access_enabled = var.public_network_access_enabled #added this
  #zone_redundant           = var.zone_redundant
  tags = var.tags

  identity {
    type = "SystemAssigned" # It is the only available for now
  }

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}


################ (Optional) Private Endpoints ###################

/*locals {
  private_endpoint_prefix = replace(var.azurerm_eventhub_namespace_name, "sa\\d+", "")
}

module "globals" {
  source = "module reference"
}

module "registry_private_endpoint" {
  source          = "module reference"
  count           = var.private_endpoints["subnet_id"] == null ? 0 : 1
  target_resource = azurerm_eventhub_namespace.eventhubnamespace.id
  location        = var.location
  private_endpoints = {
    namespace = {
      name                      = "${local.private_endpoint_prefix}-pe01"
      subnet_id                 = var.private_endpoints.subnet_id
      networking_resource_group = var.private_endpoints.networking_resource_group
      group_ids                 = ["namespace"]
      approval_required         = false
    }
  }
  private_dns = {
    namespace = {
      name                 = "privatelink.servicebus.windows.net"
      private_dns_zone_ids = "privatelink.servicebus.windows.net"
    }
  }
}*/
