terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.54.0"
    }
  }
}

resource "azurerm_eventhub_namespace" "eventhubnamespace" {
  name                     = var.azurerm_eventhub_namespace_name
  location                 = var.location
  resource_group_name      = var.resource_group_name
  sku                      = var.sku
  capacity                 = var.capacity
  auto_inflate_enabled     = var.auto_inflate_enabled
  maximum_throughput_units = var.maximum_throughput_units
  zone_redundant           = var.zone_redundant
  tags                     = var.tags

  identity {
    type = "SystemAssigned" # It is the only available for now
  }

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}
