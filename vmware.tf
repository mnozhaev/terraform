provider "vsphere" {
  user           = “mylogin@example.com"
  password       = "${var.vsphere_password}"
  vsphere_server = “virtualcenter.example.com"
  allow_unverified_ssl = "true"
}

resource "vsphere_virtual_machine" "test" {
  name   = "${var.machine_name}"
  vcpu   = 1
  memory = 1024
  domain = “test.example.com”
  datacenter = "mysite"
  resource_pool = "Production Cluster #1/Resources/myresourcepool"



  network_interface {
      label = "test"
      ipv4_address = "192.168.1.2"
      ipv4_prefix_length = "24"
      ipv4_gateway = "192.168.1.1"
  }

  disk {
   datastore = "${var.datastore}"
   size = "10"
   name = "${var.datastore}/${var.machine_name}/${var.machine_name}.vmdk"
   template = "mytemplate"
  }
}
