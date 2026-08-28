#  Neste arquivo são declaradas as variáveis que serão utilizadas na configuração do Terraform.

variable "region" {

  description = "value"
  type        = string
  nullable    = false
  default     = "sa-east-1"

  # Valida o valor informado para a variável region
  validation {

    # region só pode receber "us-east-1", "us-east-2", "sa-east-1"
    condition     = containers(var.regions, var.region)
    error_message = "Erro! Variável aceita os seguintes valores: " + var.regions
  }
}

variable "regions" {

  description = "Define regiões da aws"
  type        = list(string)
  nullable    = false
  default     = ["us-east-1", "us-east-2", "sa-east-1"]
}