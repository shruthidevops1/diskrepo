resource "azurerm_resource_group" "example" {
  name     = "diskrg"
  location = "West Europe"
  tags = {owner = "devopsteam"}
}

resource "azurerm_managed_disk" "example" {
  name                 = "datadisk1"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "40"
}