module "vpc" {
  source = "./modules/vpc/"

  vpc_cidr_block   = var.vpc_cidr_block_details
  instance_tenancy = var.instance_tenancy_details

  #app_name = var.app_name_details
  #env_name = var.env_name_details

}


module "private_subnet" {

  source = "./modules/vpc/"

  for_each = var.private_subnet

  pvt_cidr_block = each.value["pvt_cidr_block_details"]
  pvt_az         = each.value["pvt_az_details"]
}

/*
module "public_subnet" {

  source = "./modules/vpc/"

  for_each = var.public_subnet

  pub_cidr_block = each.value["pub_cidr_block_details"]
  pub_az         = each.value["pub_az_details"]
}

*/