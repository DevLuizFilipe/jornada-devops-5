resource "digitalocean_vpc" "vpc-kube-news" {
  name       = var.vpc_name
  region     = var.vpc_region
  ip_range = var.vpc_cidr_block
}