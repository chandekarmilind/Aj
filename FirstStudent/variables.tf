
variable "vpc_cidr_block_details" {}
variable "instance_tenancy_details" {}

#variable "app_name_details" {}
#variable "env_name_details" {}

variable "private_subnet" {
  type = map(object({
    pvt_cidr_block_details = "10.0.11.0/24"
    pvt_az_details         = "us-east-1a"
  }))
}

/*
variable "public_subnet" {
  type = map(object({
    pub_cidr_block_details = "10.0.12.0/24"
    pub_az_details         = "us-east-1b"
  }))
}

*/























/*
variable "access_key" {
  description = "AWS ACCESS_KEY"
  default = ""
}

variable "secret_key" {
  description = "AWS SECRETE_KEY"
  default = ""
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR for the whole VPC"
  type = string
  default = "10.0.0.0/16"
}
*/
