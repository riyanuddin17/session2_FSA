variable "ami" {
    description = "Instance ami type"
    type        = string
}

variable "subnet_id" {
    description = "subnet value"
    type        = string
}

variable "vpc_security_group_ids" {
    description = "security group from vpc module"
    type        = set(string)
}

variable "associate_public_ip_address" {
  description = "associate_public_ip_address"
  type = bool
}