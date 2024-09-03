rgs = {
  rg1 = {
    name     = "rg-preeti"
    location = "westeurope"
  }
  rg2 = {
    name     = "rg-nisha"
    location = "canadacentral"
  }
}


stg = {
  stg1 = {
    name                     = "storagepree"
    location                 = "canadacentral"
    resource_group_name      = "rg-preeti"
    account_replication_type = "LRS"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet1"
    location            = "centralindia"
    resource_group_name = "rg-preeti"
    address_space       = ["10.128.0.0/16"]
    dns_servers         = ["10.1.0.4"]
  }
}

snets = {
  snet1 = {
    name                 = "snet1"
    resource_group_name  = "rg-preeti"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

