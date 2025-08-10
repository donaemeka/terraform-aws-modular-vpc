provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source     = "../terraform-modules/vpc"
  cidr_block = var.cidr_block  # Changed from var.vpc_cidr to match module
  vpc_name   = var.vpc_name
}

module "subnets" {
  source             = "../terraform-modules/subnets"
  vpc_id             = module.vpc.vpc_id
  public_subnets     = var.public_subnets    # Now matches list type
  private_subnets    = var.private_subnets   # Now matches list type
  availability_zones = var.availability_zones
}

module "security_groups" {
  source = "../terraform-modules/security-groups"
  vpc_id = module.vpc.vpc_id
}