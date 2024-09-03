module "rg" {
  source     = "../modules/azurerm_resource_group"
  rg_details = var.rgs
}

module "stg" {
  depends_on      = [module.rg]
  source          = "../modules/azurerm_storage_account"
  storage_details = var.stg
}

module "vnets" {
  depends_on = [module.rg]
  source     = "../modules/azurerm_virtual_network"
  vnet       = var.vnets
}

module "snets" {
  depends_on     = [module.vnets]
  source         = "../modules/azurerm_subnet"
  subnet_details = var.snets
}
