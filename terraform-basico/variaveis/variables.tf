variable "aws-region" {
    type = string
    description = ""
    default = "us-east-1"
  
}

variable "instance_ami" {
    type = string
    description = ""
    default = "ami-0c101f26f147fa7fd"
  
}

variable "instance_type" {
    type = string
    description = ""
    default = "t3.micro"
  
}

variable "instance_tags" {
    type = map(string)
    description = ""
    default = {
        Name = "Ubuntu"
        Project = "Curso AWS com Terraform"
    }
  
}