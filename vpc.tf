
provider "aws" {
  region = var.AWS_Region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = ["${var.AWS_Region}a", "${var.AWS_Region}b", "${var.AWS_Region}c"]
  intra_subnets  = var.vpc_intra_subnets 
  public_subnets  = var.vpc_public_subnets

  enable_nat_gateway = var.vpc_enable_nat_gateway
  enable_vpn_gateway = false
  intra_subnet_assign_ipv6_address_on_creation = "true"
  public_subnet_assign_ipv6_address_on_creation = "true"
  enable_ipv6 = "true"


  tags = var.vpc_tags

}