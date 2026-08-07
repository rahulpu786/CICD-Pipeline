module "resource_group" {
  source = "../../Module/resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.resource_group]
  source     = "../../Module/virtual_network"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../Module/subnet"
  subnets    = var.subnets
}

module "public_ip" {
  depends_on = [module.subnet]
  source     = "../../Module/public_ip"
  pips       = var.pips
}

module "virtual_machine" {
  depends_on = [module.public_ip, module.subnet]
  source     = "../../Module/virtual_machine"
  vms        = var.vms
}
