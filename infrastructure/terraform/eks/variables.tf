variable "aws_region" {
  default = "us-east-1" 
}

variable "vpc_name" {
  default = "gitops-vpc"
}

variable "cluster_name" {
  default = "multi-tier-cluster"
}

variable "k8s_version" {
  default = "1.29"
}

