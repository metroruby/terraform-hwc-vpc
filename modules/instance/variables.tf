variable "instance_name" {
  description = "(Required) A unique name for the resource."
  type        = string
}

variable "instance_image" {
  description = " (Optional; Required if image_name is empty) The image ID of the desired image for the server. Changing this creates a new server."
  type        = string
}

variable "instance_type" {
  description = "(Optional; Required if flavor_name is empty) The flavor ID of the desired flavor for the server. Changing this resizes the existing server."
  type        = string
}

variable "instance_security_groups" {
  description = "(Optional) An array of one or more security group names to associate with the server. Changing this results in adding/removing security groups from the existing server."
  type        = string
}

variable "instance_availability_zone" {
  description = "(Required) The availability zone in which to create the server. Please following reference for the values. Changing this creates a new server."
  type        = string
}

variable "instance_subnet" {
  description = "(Required) A unique name for the resource."
  type        = string
}

variable "instance_sshkeys_name" {
  description = "(Required) A unique name for the keypair. Changing this creates a new keypair."
  type        = string
}

variable "instance_sshkeys" {
  description = "(Required) A pregenerated OpenSSH-formatted public key. Changing this creates a new keypair."
  type        = string
}

