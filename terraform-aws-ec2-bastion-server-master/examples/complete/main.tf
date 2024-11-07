provider "aws" {
  region = var.region
}

module "vpc" {
  source     = "git::https://github.com/cloudposse/terraform-aws-vpc.git?ref=tags/0.16.1"
  namespace  = var.namespace
  stage      = var.stage
  name       = var.name
  cidr_block = "172.16.0.0/16"
  tags = {
    git_commit           = "f1a3726cb53d99856f4e4a77388f3756ba9969ce"
    git_file             = "terraform-aws-ec2-bastion-server-master/examples/complete/main.tf"
    git_last_modified_at = "2020-11-09 16:45:37"
    git_last_modified_by = "68634672+guyeisenkot@users.noreply.github.com"
    git_modifiers        = "68634672+guyeisenkot"
    git_org              = "manimahesh"
    git_repo             = "terragoat"
    yor_name             = "vpc"
    yor_trace            = "b4fdd621-f57b-426d-b92e-e5791e394345"
  }
}

module "subnets" {
  source               = "git::https://github.com/cloudposse/terraform-aws-dynamic-subnets.git?ref=tags/0.26.0"
  availability_zones   = var.availability_zones
  namespace            = var.namespace
  stage                = var.stage
  name                 = var.name
  vpc_id               = module.vpc.vpc_id
  igw_id               = module.vpc.igw_id
  cidr_block           = module.vpc.vpc_cidr_block
  nat_gateway_enabled  = false
  nat_instance_enabled = false
  tags = {
    git_commit           = "f1a3726cb53d99856f4e4a77388f3756ba9969ce"
    git_file             = "terraform-aws-ec2-bastion-server-master/examples/complete/main.tf"
    git_last_modified_at = "2020-11-09 16:45:37"
    git_last_modified_by = "68634672+guyeisenkot@users.noreply.github.com"
    git_modifiers        = "68634672+guyeisenkot"
    git_org              = "manimahesh"
    git_repo             = "terragoat"
    yor_name             = "subnets"
    yor_trace            = "9fa67846-5f91-49d0-971c-1029b2e43300"
  }
}

module "aws_key_pair" {
  source              = "git::https://github.com/cloudposse/terraform-aws-key-pair.git?ref=tags/0.13.1"
  namespace           = var.namespace
  stage               = var.stage
  name                = var.name
  attributes          = ["ssh", "key"]
  ssh_public_key_path = var.ssh_key_path
  generate_ssh_key    = var.generate_ssh_key
  tags = {
    git_commit           = "f1a3726cb53d99856f4e4a77388f3756ba9969ce"
    git_file             = "terraform-aws-ec2-bastion-server-master/examples/complete/main.tf"
    git_last_modified_at = "2020-11-09 16:45:37"
    git_last_modified_by = "68634672+guyeisenkot@users.noreply.github.com"
    git_modifiers        = "68634672+guyeisenkot"
    git_org              = "manimahesh"
    git_repo             = "terragoat"
    yor_name             = "aws_key_pair"
    yor_trace            = "ca6ee4ac-3964-438d-8a4a-8593a806c207"
  }
}

module "ec2_bastion" {
  source = "../../"

  enabled = var.enabled

  ami           = var.ami
  instance_type = var.instance_type

  name      = var.name
  namespace = var.namespace
  stage     = var.stage
  tags = merge(var.tags, {
    git_commit           = "f1a3726cb53d99856f4e4a77388f3756ba9969ce"
    git_file             = "terraform-aws-ec2-bastion-server-master/examples/complete/main.tf"
    git_last_modified_at = "2020-11-09 16:45:37"
    git_last_modified_by = "68634672+guyeisenkot@users.noreply.github.com"
    git_modifiers        = "68634672+guyeisenkot"
    git_org              = "manimahesh"
    git_repo             = "terragoat"
    yor_name             = "ec2_bastion"
    yor_trace            = "6fcaf918-02ee-4a8d-b5d0-de24fee0d689"
  })
  attributes = var.attributes

  security_groups         = compact(concat([module.vpc.vpc_default_security_group_id], var.security_groups))
  ingress_security_groups = var.ingress_security_groups
  subnets                 = module.subnets.public_subnet_ids
  ssh_user                = var.ssh_user
  key_name                = module.aws_key_pair.key_name

  user_data = var.user_data

  vpc_id = module.vpc.vpc_id
}