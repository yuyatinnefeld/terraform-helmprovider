resource "helm_release" "istio_testapp" {
  name       = "${var.namespace}-${var.stage}"
  namespace  = "${var.namespace}"

  # Local Helmchart Template path
  chart     = "${path.module}/${var.chart_path}"

  # Local Helmchart Values path
  values = [
    file("${path.module}/${var.chart_variable}")
  ]

  create_namespace = true

  # Speed up installs and upgrades by skipping waiting for pods to be ready
  wait    = false # Disable wait to speed up installs and upgrades
  atomic  = false # Disable atomic to avoid rollbacks on failure
  timeout = 300 # 5 minutes
  dependency_update = false # Disable automatic dependency updates
}
