terraform {
  backend "s3" {
    bucket = "karo-terraform-state"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
