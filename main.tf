# Define variables
variable "hwc_access_key" {}
variable "hwc_secret_key" {}
variable "hwc_tenant_name" {}
variable "hwc_region" {}
variable "hwc_auth_url" {}
variable "network_name" {}
variable "network_subnet_name" {}
variable "network_cidr" {}

# Connect to HWC
provider "huaweicloud" {
  access_key  = "${var.hwc_access_key}"
  secret_key  = "${var.hwc_secret_key}"
  tenant_name = "${var.hwc_tenant_name}"
  region      = "${var.hwc_region}"
  auth_url    = "${var.hwc_auth_url}"
}

# Craete VPC (CIDR)
resource "huaweicloud_networking_network_v2" "network_1" {
  name           = "${var.network_name}"
  admin_state_up = "true"
}

resource "huaweicloud_networking_subnet_v2" "subnet_1" {
  name       = "${var.network_subnet_name}"
  network_id = "${huaweicloud_networking_network_v2.network_1.id}"
  cidr       = "${network_cidr}"
  ip_version = 4
}
