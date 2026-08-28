# ============================================================
# Terraform
#
# Define a versão mínima do Terraform utilizada no projeto
# e o provider da Google Cloud.
# ============================================================

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

# ============================================================
# Provider Google Cloud
#
# Define o projeto e a região utilizados pelo Terraform.
# ============================================================

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# ============================================================
# VPC
#
# Cria uma rede virtual privada na Google Cloud.
# O modo custom permite definir manualmente as sub-redes.
# ============================================================

resource "google_compute_network" "vpc" {
  name                    = "terraform-vpc"
  auto_create_subnetworks = false
}

# ============================================================
# Sub-rede
#
# Cria uma sub-rede dentro da VPC criada anteriormente.
# ============================================================

resource "google_compute_subnetwork" "subnet" {
  name          = "terraform-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = var.region
  network       = google_compute_network.vpc.id
}

# ============================================================
# Máquina virtual
#
# Cria uma VM Compute Engine utilizando a imagem Debian
# consultada no data source definido em data.tf.
# ============================================================

resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = "e2-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian.self_link
    }
  }

  network_interface {
    network    = google_compute_network.vpc.id
    subnetwork = google_compute_subnetwork.subnet.id
  }
}
