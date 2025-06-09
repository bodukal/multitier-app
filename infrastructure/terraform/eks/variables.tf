variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the cluster will be deployed"
  type        = string
}

variable "igw_id" {
  description = "Internet Gateway ID"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "k8s_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.29"
}

variable "create_kms_key" {
  description = "Whether to create a new KMS key for cluster encryption"
  type        = bool
  default     = false
}

