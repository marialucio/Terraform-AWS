resource "aws_s3_bucket" "this" {

  ## Cria um nome aleatório para o bucket, utilizando o provider random_pet, e concatena com o ambiente
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = {
    Service     = "Curso Terraform"
    ManagedBy   = "Terraform"
    Environment = "var.environment"
    Owner       = "Mary Ly"
  }
}