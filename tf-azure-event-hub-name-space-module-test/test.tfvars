#variable values for event hub namespace variables

eventhubnamespace = {
  resource_group_name             = "g08-azrdevuw2-resources-rg01"
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
  private_endpoints = {
    networking_resource_group = "g15-azrdevuw2-faridtemptest-sub01"
    subnet_id                 = "/subscriptions/3cbc2b8f-4d88-4f27-b69c-afec96a30dff/resourceGroups/g15-azrdevuw2-network-rg01/providers/Microsoft.Network/virtualNetworks/g15-azrdevuw2-faridtemptest-vnet01/subnets/subnet-23"
  }


}