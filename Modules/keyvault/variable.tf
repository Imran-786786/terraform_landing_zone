variable "keyVault-map" {
  type = map(object({
    name = string
    location = string
    resource_group_name = string
    sku_name = string
    tenant_id = string
  }))
}