resource "helm_release" "jenkins" {
  name       = "jenkins"
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"
  wait       = true

  set_sensitive {
    name  = "controller.adminUser"
    value = "admin"
  }
  set_sensitive {
    name = "controller.adminPassword"
    value = "admin"
  }
  set_sensitive {
    name = "adminPassword"
    value = "admin"
  }
  depends_on = [kind_cluster.default]
}
