// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("/Users/aputra/.google/account.json")}"
  project     = "noetl-1077"
  region      = "us-central1"
}

// Save terraform state remotely
# terraform {
#   backend "gcs" {
#     bucket  = "tf-state-prod"
#     prefix  = "terraform/state"
#   }
# }

module "k8s_cluster" {
  source = "../"

  cluster_name = "my-noetl"
}

output "endpoint" {
  value = "${module.k8s_cluster.endpoint}"
}

output "client_certificate" {
  value = "${module.k8s_cluster.client_certificate}"
}

output "client_key" {
  value = "${module.k8s_cluster.client_key}"
}

output "cluster_ca_certificate" {
  value = "${module.k8s_cluster.cluster_ca_certificate}"
}
