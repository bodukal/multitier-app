module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = ">= 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.k8s_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  cluster_endpoint_public_access = true
  enable_cluster_creator_admin_permissions = true

  create_kms_key = false

  cluster_encryption_config = {
    resources        = ["secrets"]
    provider_key_arn = "arn:aws:kms:us-east-1:864899857289:alias/eks/multi-tier-cluster"
  }

  eks_managed_node_groups = {
    workernode = {
      name            = "workernode"
      desired_capacity = 3
      max_capacity     = 4
      min_capacity     = 1
      instance_types   = ["t3.medium"]
    }
  }

  cluster_enabled_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler"
  ]

  tags = {
    Project = "GitOps Multi-Tier App"
  }
}

