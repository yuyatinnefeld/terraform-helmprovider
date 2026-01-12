variable "namespace" {
  type    = string
  default = "istio-testapp-cloud"
}

variable "chart_path" {
  type    = string
  default = "../istio-testapp/helm"
}

variable "chart_variable" {
  type    = string
  default = "../istio-testapp/helm/values-cluster1.yaml"
}

variable "stage" {
  type        = string
  description = "Deployment stage (dev, staging, prod)"
}