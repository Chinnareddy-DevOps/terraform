terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }
  }
  backend "s3" {
    bucket = "chinna-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "chinna-locking"
  }
}

# provide authentication here

provider "aws" {
    region = "us-east-1"
  
}