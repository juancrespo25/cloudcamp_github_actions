module "ec2" {
  source                = "./modules/vpc"
  cidr                   = "10.29.0.0/16"
}