# Este arquivo é utilizado para consultar informações externas e disponibilizar o resultado dentro do Terraform durante a execução

# Consulta recurso existente na aws desconhecido pelo terraform, permitindo que o terraform tenha acesso a informação
data "aws_s3_bucket" "recurso_existentente_na_aws_criado_fora_do_terraform" {
  
  bucket = aws_s3_bucket.buckect_criado_fora_do_terraform.buckect
}

# Consulta a AWS e retorna uma Availability Zone que estiver disponível.
data "aws_availability_zone" "zones_available" {

  state = "available"
}