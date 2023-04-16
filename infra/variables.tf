# Definição das variáveis
#-------------------------Cluster variables---------------------------------

variable "cluster_name" {
  type        = string
  description = "Name of the Kubernetes cluster"
  default = "kube-news-prod"
}

variable "region" {
  type        = string
  description = "Region for the Kubernetes cluster"
  default = "nyc1"
}

variable "k8s_version" {
  type        = string
  description = "Version of Kubernetes to deploy"
  default = "1.26.3-do.0"
}

variable "node_name" {
  type        = string
  description = "NAme of the worker nodes in the node pool"
  default = "apps"
}

variable "node_size" {
  type        = string
  description = "Size of the worker nodes in the node pool"
  default = "s-1vcpu-2gb"
}

variable "node_count" {
  type        = number
  description = "Number of worker nodes in the node pool"
  default = "2"
}

#---------------------------VPC variables--------------------------------

variable "vpc_name" {
  type        = string
  description = "Name for the VPC"
  default = "vpc-kube-news"
}

variable "vpc_region" {
  type        = string
  description = "Region for the VPC"
  default = "nyc1"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
  default = "10.0.0.0/16"
}

#----------------------------- Droplet variables ------------------------

variable "droplet_name" {
  type        = string
  description = "Name of droplet"
  default = "jenkins"
}

variable "droplet_image" {
  type        = string
  description = "Image of droplet"
  default = "ubuntu-22-04-x64"
}

variable "droplet_region" {
  type        = string
  description = "Region of droplet"
  default = "nyc1"
}

variable "droplet_size" {
  type        = string
  description = "Size of droplet"
  default = "s-2vcpu-2gb"
}