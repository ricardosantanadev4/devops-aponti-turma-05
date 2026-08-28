# Arquivo principal de configurações terraform para provisionar recursos na AWS


# Configura o provedor que o terraforme vai usar para criar e gerenciar recursos
provider "aws" {

  #Define a região onde os recursos serão criados
  region = var.region
}

# Declara o recurso que o terraform irá criar ou gerenciar
# resource "tipo_do_recurso" "nome_local"
resource "aws_s3_bucket" "aws_object_storage" {

  # Define o nome do bucket s3 que será criado na aws
  bucket = "armazenamento-de-objetos-da-aws"
}
