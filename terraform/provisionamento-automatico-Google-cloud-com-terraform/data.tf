# ============================================================
# Data Source
#
# Consulta uma imagem pública existente na Google Cloud.
# O Terraform não cria essa imagem. Ele apenas consulta
# informações sobre ela para utilizá-las na configuração.
# ============================================================

data "google_compute_image" "debian" {
  project = "debian-cloud"
  name    = "debian-12-bookworm-v20240809"
}
