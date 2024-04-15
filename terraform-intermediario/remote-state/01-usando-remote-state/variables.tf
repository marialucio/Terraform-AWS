variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}


variable "ami" {
  type        = string
  description = ""
  default     = "ami-051f8a213df8bc089"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}