terraform {
  required_version = "1.7.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}


## Altera tags sem provisionar novo recurso
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "lyona-bucket-1234"

  tags = {
    Name        = "lyona-bucket-1234"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Maria Ly"
    UpdatedAt   = "28/03/24"
  }
}
