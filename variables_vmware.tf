variable "vsphere_password" {}
variable "machine_name" {
    type = "string"
    default = "test"
}
variable "datastore" {
    type = "string"
    default = "mysite/mydatastore"
}
