terraform {
  required_version = "~> 1.1.2"

  backend "s3" {
    encrypt        = true
    bucket         = "ammar-dev-terraform-remote-state-centralized"
    dynamodb_table = "ammar-dev-terraform-locks-centralized"
    region         = "us-east-1"
    key            = "state/dev/terraform.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.39.0"
    }
  }
}