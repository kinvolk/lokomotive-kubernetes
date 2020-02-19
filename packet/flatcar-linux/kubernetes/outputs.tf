output "kubeconfig-admin" {
  value = module.bootkube.kubeconfig-admin
}

output "kubeconfig" {
  value = module.bootkube.kubeconfig-kubelet
}

output "dns_entries" {
  value = local.dns_entries
}

# values.yaml content for all deployed charts.
output "kubernetes_values" {
  value = module.bootkube.kubernetes_values
}

output "kubelet_values" {
  value = module.bootkube.kubelet_values
}

output "calico_values" {
  value = module.bootkube.calico_values
}

output "flannel_values" {
  value = module.bootkube.flannel_values
}

output "kube-router_values" {
  value = module.bootkube.kube-router_values
}

output "etcd_client_ca_cert" {
  value = module.bootkube.etcd_ca_cert
}

output "etcd_client_cert" {
  value = module.bootkube.etcd_client_cert
}

output "etcd_client_key" {
  value = module.bootkube.etcd_client_key
}

output "etcd_endpoints" {
  value = data.template_file.etcds.*.rendered
}
