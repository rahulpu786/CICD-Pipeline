rgs = {
  rg1 = {
    name     = "rg-vm11"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name                = "vm-vnet"
    location            = "centralindia"
    resource_group_name = "rg-vm1"
    address_space       = ["10.100.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "vm-frontend-subnet"
    resource_group_name  = "rg-vm1"
    virtual_network_name = "vm-vnet"
    address_prefixes     = ["10.100.1.0/24"]

  }
  subnet2 = {
    name                 = "vm-backend-subnet"
    resource_group_name  = "rg-vm1"
    virtual_network_name = "vm-vnet"
    address_prefixes     = ["10.100.2.0/24"]

  }
}

pips = {
  pip1 = {
    name                = "vm-frontend-pip"
    resource_group_name = "rg-vm1"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "vm-backend-pip"
    resource_group_name = "rg-vm1"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    nic_name             = "vm-frontend-nic"
    rg_name              = "rg-vm1"
    location             = "centralindia"
    vm_name              = "vm-frontend"
    vm_size              = "Standard_D2s_v3"
    username             = "veenuvm"
    password             = "veenuvm@12345"
    subnet_name          = "vm-frontend-subnet"
    virtual_network_name = "vm-vnet"
    public_ip_name       = "vm-frontend-pip"


  }
  vm2 = {
    nic_name             = "vm-backend-nic"
    rg_name              = "rg-vm1"
    location             = "centralindia"
    vm_name              = "vm-backend"
    vm_size              = "Standard_D2s_v3"
    username             = "veenuvm"
    password             = "veenuvm@12345"
    subnet_name          = "vm-backend-subnet"
    virtual_network_name = "vm-vnet"
    public_ip_name       = "vm-backend-pip"
    github_token         = "ghp_123456789012345678901234567890123456"


  }
}