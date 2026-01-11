variable "namespace" {
  type    = string
  default = "default"
}

variable "chart_path" {
  type    = string
  default = "../helm"
}

variable "chart_variable" {
  type    = string
  default = "../helm/values-cluster1.yaml"
}

variable "stage" {
  type        = string
  description = "Deployment stage (dev, staging, prod)"
}