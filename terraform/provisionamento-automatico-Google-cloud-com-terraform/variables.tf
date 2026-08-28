# ============================================================
# Variável: project_id
# Identifica o projeto da Google Cloud onde os recursos
# serão provisionados.
# ============================================================

variable "project_id" {
  description = "ID do projeto na Google Cloud"
  type        = string
}

# ============================================================
# Variável: region
# Define a região da Google Cloud onde os recursos serão
# provisionados.
# ============================================================

variable "region" {
  description = "Região da Google Cloud"
  type        = string
  default     = "us-central1"
}

# ============================================================
# Variável: zone
# Define a zona onde a máquina virtual será criada.
# ============================================================

variable "zone" {
  description = "Zona da Google Cloud"
  type        = string
  default     = "us-central1-a"
}

# ============================================================
# Variável: vm_name
# Define o nome da máquina virtual.
# ============================================================

variable "vm_name" {
  description = "Nome da máquina virtual"
  type        = string
  default     = "terraform-vm"
}
