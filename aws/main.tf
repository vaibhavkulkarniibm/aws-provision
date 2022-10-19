terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region     = var.aws_region
}

module "s3" {
  source = "./modules/s3"
}

module "vpc" {
  source = "./modules/vpc"
}

module "redis" {
  subnet_1 = "${module.vpc.subnet_1}"
  subnet_2 = "${module.vpc.subnet_2}"
  source = "./modules/redis"
}

module "cloudwatch" {
  source = "./modules/cloudwatch"
}

module "kinesis" {
  source = "./modules/kinesis"
}

module "msk" {
  subnet_1 = "${module.vpc.subnet_1}"
  subnet_2 = "${module.vpc.subnet_2}"
  sg_id =  "${module.vpc.sg_id}"
  source = "./modules/msk-kafka"
  }