resource "azurerm_network_interface" "nic" {
    name = "preeti-nic"
    location = "centralcanada"
    resource_group_name = "preeti-rg"

    ip_configuration {
      name = "preetiips"
      subnet_id = ""
      private_ip_address_allocation = "Dynamic"
    } 
}

resource "azurerm_virtual_machine" "virtual_machine" {
    name = "preeti-vm"
    location = "centralcanada"
    resource_group_name = "rg-preeti"
    network_interface_ids = [azurerm_network_interface.nic.network_interface_ids]
    vm_size = "Standard_DS1_v2"

    os_profile {
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
}