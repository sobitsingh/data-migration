provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./modules/EC2"
}

module "s3" {
  source = "./modules/S3"
}
module "glue" {
  source = "./modules/Glue"
}


output "ec2ip" {
  value = module.ec2.ec2ip
}