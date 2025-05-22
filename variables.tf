variable "resource_group_name" {
  description = "The resource group name."
}
variable "location" {
  description = "The region were the resource will be deployed."
}

variable "azurerm_eventhub_namespace_name" {
  description = "The eventhub namespace name."
}

variable "capacity" {
  description = "Specifies the Capacity / Throughput Units for a Standard SKU namespace. Valid values range from 1 - 20."
  default     = "1"
}

variable "auto_inflate_enabled" {
  description = "Is Auto Inflate enabled for the EventHub Namespace?"
  default     = "true"
}

variable "maximum_throughput_units" {
  description = "Specifies the maximum number of throughput units when Auto Inflate is Enabled. Valid values range from 1 - 20."
  default     = "4"
}

variable "zone_redundant" {
  description = "Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created."
  default     = "false"
}

variable "tags" {
  type = map(string)
}

variable "public_network_access_enabled" {
  default = false
}

variable "sku" {
  description = "Defines which tier to use. Valid options are Basic, Standard, and Premium. Please not that setting this field to Premium will force the creation of a new resource and also requires setting zone_redundant to true."
  default     = "Standard"
}