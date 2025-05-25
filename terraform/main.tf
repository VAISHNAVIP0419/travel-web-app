module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr_block      = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  public_az           = "ap-south-1a"
  private_az          = "ap-south-1b"
  vpc_name            = "luxe-vpc"
}

module "iam" {
  source = "./modules/iam"
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source             = "./modules/ec2"
  ami                = var.ami
  instance_type      = var.instance_type
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.sg.security_group_id]
  key_name           = var.key_name
  instance_name      = "luxe-ec2"
  iam_role           = module.iam.role_name
}