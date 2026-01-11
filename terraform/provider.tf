provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # Path your k8s config
  }
}