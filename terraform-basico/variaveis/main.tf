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
  region = var.aws-region
}

## 

## Cria uma instância utilizando as variáveis do arquivo variables.tf
resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}
##