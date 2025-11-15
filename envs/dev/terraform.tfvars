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
  app1 = {
    name                = "pip-dev-001"
    resource_group_name = "rg-dev-001"
    location            = "centralindia"
    allocation_method   = "Static"
    tags = {
      app = "frontend"
      env = "dev"
    }
  }
  app2 = {
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