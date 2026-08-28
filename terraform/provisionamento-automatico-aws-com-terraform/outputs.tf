# Este arquivo é utilizado para exibir valores importantes que foram gerados ou obtidos durante a execução do Terraform "terraform apply"

output "display_bucket_name" {
  type        = string
  description = "Exibe nome do buckect criado na aws"
  value       = aws_s3_bucket.aws_object_storage.bucket
}

output "display_bucket_id" {

  type        = string
  description = "Exibe o id do bucket criado na aws"
  value       = aws_s3_bucket.aws_object_storage.id
}
