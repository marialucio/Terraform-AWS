resource "aws_s3_bucket" "this" {

  ## Cria um nome aleatório para o bucket, utilizando o provider random_pet, e concatena com o ambiente
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

## Usando o locals para utilizar valores que se repetem
resource "aws_s3_bucket_object" "this" {

  bucket = aws_s3_bucket.this.bucket

  key = "config/${local.ip_filepath}"

  source = local.ip_filepath

  etag = filemd5(local.ip_filepath)

}