module "eventhubnamespace" {
  source = "git@gitlab.chq.ei:dc-cloudinfra/tf-azure-event-hub-name-space.git"

  resource_group_name             = var.eventhubnamespace.resource_group_name
  location                        = var.eventhubnamespace.location
  sku                             = var.eventhubnamespace.sku
  azurerm_eventhub_namespace_name = var.eventhubnamespace.azurerm_eventhub_namespace_name
  capacity                        = var.eventhubnamespace.capacity
  auto_inflate_enabled            = var.eventhubnamespace.auto_inflate_enabled
  maximum_throughput_units        = var.eventhubnamespace.maximum_throughput_units
  public_network_access_enabled   = var.eventhubnamespace.public_network_access_enabled
  tags                            = var.eventhubnamespace.tags
  private_endpoints               = var.eventhubnamespace.private_endpoints

}