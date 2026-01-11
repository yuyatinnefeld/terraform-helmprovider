resource "helm_release" "my_app" {
  name       = "istio-testapp-${var.stage}"
  namespace  = "istio-testapp"

  # Local chart path (relative or absolute)
  chart     = "${path.module}/${var.chart_path}"

  # Optional: override values
  values = [
    file("${path.module}/${var.chart_variable}")
  ]

  # Optional but recommended
  create_namespace = true
  dependency_update = true
}
