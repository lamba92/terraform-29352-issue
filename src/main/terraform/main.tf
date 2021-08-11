provider "aws" {
  region  = "eu-west-1"
  profile = "kpm-prod"
}

terraform {
  backend "s3" {
    bucket  = "terraform.service"
    key     = "account-setup.tfstate"
    profile = "kpm-prod"
    region  = "us-east-1"
  }
}
