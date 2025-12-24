rgs = {
  rg001 = {
    name       = "rg-nilesh-001"
    location   = "south india"
    managed_by = "Terraform"
    tags = {
      env = "nilesh"
    }
  }
}

network = {
  vnet001 = {
    name          = "vnet-nilesh-001"
    location      = "south india"
    rg_name       = "rg-nilesh-001"
    address_space = ["10.0.0.0/16"]
    tags = {
      env = "nilesh"
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
    name                = "pip-nilesh-001"
    resource_group_name = "rg-nilesh-001"
    location            = "south india"
    allocation_method   = "Static"
    tags = {
      app = "frontend"
      env = "nilesh"
    }
  }
  pip002 = {
    name                = "pip-nilesh-002"
    resource_group_name = "rg-nilesh-001"
    location            = "southindia"
    allocation_method   = "Static"
    tags = {
      app = "backend"
      env = "nilesh"
    }
  }
}

key_vault = {
  kv001 = {
    kv_name  = "kv-nilesh-mowgli-001"
    location = "south india"
    rg_name  = "rg-nilesh-001"
  }
}

vm_username  = "vmUsernilesh01"
vm_password  = "nilesh$VM2025#Mowgli"
sql_username = "sqlUsernilesh01"
sql_password = "nilesh$SQL2025#Mowgli"


vms = {
  vm001 = {
    nic_name    = "nic-f-vm-001"
    location    = "south india"
    rg_name     = "rg-nilesh-001"
    vnet_name   = "vnet-nilesh-001"
    subnet_name = "f-subnet001"
    pip_name    = "pip-nilesh-001"
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
    location    = "south india"
    rg_name     = "rg-nilesh-001"
    vnet_name   = "vnet-nilesh-001"
    subnet_name = "b-subnet001"
    pip_name    = "pip-nilesh-002"
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
    name     = "sql-server-infranilesh-001"
    rg_name  = "rg-nilesh-001"
    location = "south india"
    kv_name  = "kv001"
    tags = {
      env = "nilesh"
    }
  }
}

sql_database = {
  sql_database001 = {
    name         = "sql-database-infranilesh-001"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = 2
    sku_name     = "S0"
    enclave_type = "VBS"
    tags = {
      env = "nilesh"
    }
    server_id = ""
  }
}

stas = {
  sta001 = {
    name                     = "stastatemowgli"
    location                 = "south india"
    rg_name                  = "rg-nilesh-001"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    tags = {
      env = "nilesh"
    }
  }
}
