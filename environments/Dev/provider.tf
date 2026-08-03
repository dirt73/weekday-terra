terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket = "weekendterrabucket0308"
    key    = "environments/Dev/terraform.tfstate"
    region = "ap-south-1"
}
}
provider "aws"{
  region = "ap-south-1"
}
