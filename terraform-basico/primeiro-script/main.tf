## Fixa a versão do terraform e do provider
terraform {
  required_version = "1.7.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }

}

## 

## Declara o provider dos recursos que serão utilizados

provider "aws" {
  region = "us-east-1"
}

## 

## Cria um bucket S3 simples, baseado no código fornecido em registry.terraform.io
resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "lyona-bucket-1234"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}
##