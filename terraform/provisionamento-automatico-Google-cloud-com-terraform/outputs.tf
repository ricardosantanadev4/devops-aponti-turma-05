# ============================================================
# Output da VPC
#
# Exibe o ID da VPC criada pelo Terraform.
# ============================================================

output "vpc_id" {
  description = "ID da VPC criada"
  value       = google_compute_network.vpc.id
}

# ============================================================
# Output da sub-rede
#
# Exibe o nome da sub-rede criada.
# ============================================================

output "subnet_name" {
  description = "Nome da sub-rede criada"
  value       = google_compute_subnetwork.subnet.name
}

# ============================================================
# Output da máquina virtual
#
# Exibe o nome da VM criada.
# ============================================================

output "vm_name" {
  description = "Nome da máquina virtual criada"
  value       = google_compute_instance.vm.name
}

# ============================================================
# Output da imagem
#
# Exibe o self_link da imagem consultada através do data source.
# ============================================================

output "image_used" {
  description = "Imagem utilizada pela máquina virtual"
  value       = data.google_compute_image.debian.self_link
}
