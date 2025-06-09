provider "aws" {
  region = var.aws_region
}

# Kubernetes provider depends on cluster creation, so no depends_on here
provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}

