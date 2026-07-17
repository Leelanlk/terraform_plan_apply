#variable values for event hub namespace variables

resource_group_name             = "test-rg-st"
location                        = "westus2"
sku                             = "Standard"
azurerm_eventhub_namespace_name = "namespacename"
capacity                        = 2
auto_inflate_enabled            = false
maximum_throughput_units        = 7
public_network_access_enabled   = false
tags = {
  "costcenter" = "G15"
}
