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
    name         = "vnet-dev-001"
    location     = "centralindia"
    rg_name      = "rg-dev-001"
    adress_space = ["10.0.0.0/16"]
    tags = {
      env = "dev"
    }
    subnets = [
      {
        name            = "f-subnet001"
        adress_prefixes = ["10.0.1.0/24"]
      },
      {
        name            = "b-subnet001"
        adress_prefixes = ["10.0.2.0/24"]
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
