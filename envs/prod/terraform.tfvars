location            = "eastus"
resource_group_name = "rg-prod"
vnet_name           = "vnet-prod"
address_space       = ["10.1.0.0/16"]
subnets = [
  { name = "subnet1", prefix = "10.1.1.0/24" },
  { name = "subnet2", prefix = "10.1.2.0/24" }
]
nsg_name            = "nsg-prod"
vm_count_per_subnet = 2
admin_username      = "azureuser"
admin_password      = "P@ssw0rd123!"
environment         = "prod"
