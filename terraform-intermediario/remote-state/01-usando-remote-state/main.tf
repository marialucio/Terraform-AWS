terraform {
    required_version = "1.7.5"
  
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "5.42.0"
      }
    }

    backend "s3" {
      bucket = "tfstate-813405838316"
      key = "dev/01-usando-remote-state/terraform.tfstate"
      region = "us-east-1"
    }
  
  }
  
  provider "aws" {
    region = "us-east-1"
  }