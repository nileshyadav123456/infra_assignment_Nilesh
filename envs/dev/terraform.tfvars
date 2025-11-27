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
    kv_name  = "kv-dev-mowgli-001"
    location = "centralindia"
    rg_name  = "rg-dev-001"
  }
}

vm_username  = "devadmin"
vm_password  = "DevAdmin$224093"
sql_username = "sqladmin"
sql_password = "SqlAdmin$224093"


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
    kv_name     = "kv001"
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
    kv_name     = "kv001"
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
    name     = "sql-server-dev-001"
    rg_name  = "rg-dev-001"
    location = "centralindia"
    kv_name  = "kv001"
    tags = {
      env = "dev"
    }
  }
}

sql_database = {
  sql_database001 = {
    name         = "sql-database-dev-001"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = 2
    sku_name     = "S0"
    enclave_type = "VBS"
    tags = {
      env = "dev"
    }
    server_id = ""
  }
}

stas = {
  sta001 = {
    name                     = "stastatemowgli"
    location                 = "centralindia"
    rg_name                  = "rg-dev-001"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      env = "dev"
    }
  }
}
