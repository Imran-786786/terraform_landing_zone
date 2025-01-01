resource "azurerm_key_vault" "keyVault" {
    for_each = var.keyVault-map
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    sku_name = each.value.sku_name
    tenant_id =each.value.tenant_id

}