terraform {
    required_providers {
        vsphere = {
            source = "vmware/vsphere"
        }
    }
}


data "vsphere_datacenter" "dc" {
  name = "DC1"
}