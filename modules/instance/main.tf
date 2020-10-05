resource "huaweicloud_compute_instance" "instance" {
  name              = var.instance_name
  image_id          = var.instance_image
  flavor_id         = var.instance_type
  security_groups   = var.instance_security_groups
  availability_zone = var.instance_availability_zone

  network_interface {
    name = var.instance_subnet
  }
}

resource "huaweicloud_compute_keypair" "instance-keypair" {
  name       = var.instance_sshkeys_name
  public_key = <<EOF
${join("\n", var.instance_sshkeys)}
                EOF
}