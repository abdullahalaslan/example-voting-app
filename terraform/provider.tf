
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "vote-user"
  default_tags {
    tags = {
      Terraform = "true"
      "Talent"  = "670800810865"
    }
  }
}
