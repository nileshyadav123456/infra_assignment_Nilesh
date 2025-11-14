location            = "eastus"
resource_group_name = "rg-dev"
vnet_name           = "vnet-dev"
address_space       = ["10.0.0.0/16"]
subnets = [
  { name = "subnet1", prefix = "10.0.1.0/24" },
  { name = "subnet2", prefix = "10.0.2.0/24" }
]
nsg_name            = "nsg-dev"
vm_count_per_subnet = 2
admin_username      = "azureuser"
admin_password      = "P@ssw0rd123!"
environment         = "dev"