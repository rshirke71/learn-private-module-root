# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#     }
#   }
# }

provider "aws" {
  region = "us-east-1"
}

module "s3-webapp" {
  source  = "app.terraform.io/aims/s3-webapp/aws"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}

