rgs = {
  rg001 = {
    name       = "rg-dev-001"
    location   = "centralindia"
    managed_by = "Terraform"
    tags = {
      env = "dev"
    }
  }
}

network = {
  vnet001 = {
    name          = "vnet-dev-001"
    location      = "centralindia"
    rg_name       = "rg-dev-001"
    address_space = ["10.0.0.0/16"]
    tags = {
      env = "dev"
    }
    subnets = [
      {
        name             = "f-subnet001"
        address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "b-subnet001"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}


public_ips = {
  pip001 = {
    name                = "pip-dev-001"
    resource_group_name = "rg-dev-001"
    location            = "centralindia"
    allocation_method   = "Static"
    tags = {
      app = "frontend"
      env = "dev"
    }
  }
  pip002 = {
    name                = "pip-dev-002"
    resource_group_name = "rg-dev-001"
    location            = "centralindia"
    allocation_method   = "Static"
    tags = {
      app = "backend"
      env = "dev"
    }
  }
}

key_vault = {
  kv001 = {
    kv_name  = "kv-dev-001"
    location = "centralindia"
    rg_name  = "rg-dev-001"
  }
}


vms = {
  vm001 = {
    nic_name    = "nic-f-vm-001"
    location    = "centralindia"
    rg_name     = "rg-dev-001"
    vnet_name   = "vnet-dev-001"
    subnet_name = "f-subnet001"
    pip_name    = "pip-dev-001"
    vm_name     = "f-vm-001"
    size        = "Standard_F2"
    kv_name     = "kv-dev-001"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
  vm002 = {
    nic_name    = "nic-b-vm-002"
    location    = "centralindia"
    rg_name     = "rg-dev-001"
    vnet_name   = "vnet-dev-001"
    subnet_name = "b-subnet001"
    pip_name    = "pip-dev-002"
    vm_name     = "b-vm-001"
    size        = "Standard_F2"

    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}

sql_servers = {
  sql_server001 = {
    name                         = "sql_server-dev-001"
    rg_name                      = "rg-dev-001"
    location                     = "centralindia"
    version                      = "12.0"
    administrator_login          = ""
    administrator_login_password = ""
    minimum_tls_version          = "1.2"

    tags = {
      env = "dev"
    }
  }
}

sql_database = {
  sql_database001 = {
    name         = "sql_database-dev-001"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = "2"
    sku_name     = "S0"
    enclave_type = "VBS"
    tags = {
      env = "dev"
    }
  }
}



stas = {
  sta001 = {
    name                     = "stastate"
    location                 = "centralindia"
    rg_name                  = "rg-dev-001"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      env = "dev"
    }
  }
}
