provider "vsphere" {
  vim_keep_alive = 30
  user           = "test"
  password       = "test"
  vsphere_server = "test"
  allow_unverified_ssl = true
}

module "servers" {
  
  source             = "./modules/servers"
  providers = {
    vsphere = vsphere
  }


}
