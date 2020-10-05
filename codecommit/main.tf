terraform {
  required_version = ">= 0.12.19"
  backend "s3" {
    bucket = "tfstate-aws-developer-terraform-state"
    key    = "codecommit/"
    region = "us-east-2"
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# PREPARE PROVIDERS
# ---------------------------------------------------------------------------------------------------------------------
provider "aws" {
  version = "~> 3.0"
  region  = "us-east-2"
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE CODECOMMIT REPOSITORY
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_codecommit_repository" "test" {
  repository_name = "Testing"
  description     = "This is a testing repository for AWS Developer Tools."
}
