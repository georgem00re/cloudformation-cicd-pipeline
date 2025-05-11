
terraform {
  required_version = ">= 1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0"
    }
  }
  backend "s3" {
    bucket = var.TF_STATE_BUCKET_NAME
    key = "terraform.tfstate"
    dynamodb_table = var.TF_STATE_LOCK_TABLE_NAME
  }
}

provider "aws" {}

resource "aws_vpc" "example" {
  cidr_block = "192.0.0.0/16"
}
