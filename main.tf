terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.9.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"  # Path to your Kubernetes config file
  }
}