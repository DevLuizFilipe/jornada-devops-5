# Recurso do cluster Kubernetes
resource "digitalocean_kubernetes_cluster" "kube-news" {
  name     = var.cluster_name
  region   = var.region
  version  = var.k8s_version
  vpc_uuid = digitalocean_vpc.vpc-kube-news.id
  node_pool {
    name       = var.node_name
    size       = var.node_size
    node_count = var.node_count
  }
}
