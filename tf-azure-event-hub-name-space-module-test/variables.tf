#Variable values for event hub name space

variable "eventhubnamespace" {
  description = "variables for event hub name space module calling"

  type = object({
    resource_group_name             = string
    location                        = string
    azurerm_eventhub_namespace_name = string
    sku                             = string
    capacity                        = number
    auto_inflate_enabled            = bool
    maximum_throughput_units        = number
    public_network_access_enabled   = bool
    tags                            = map(string)
    private_endpoints = object({
      networking_resource_group = string
      subnet_id                 = string
    })

  })

}