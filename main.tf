module "vpc" {
  source                = "./modules/vpc"
  cidr                   = "10.29.0.0/16"
}