data "aws_eks_cluster" "cluster" {
  name       = module.eks.cluster_name
  depends_on = [module.eks]  # wait until EKS cluster is created
}

data "aws_eks_cluster_auth" "cluster" {
  name       = module.eks.cluster_name
  depends_on = [module.eks]  # wait until EKS cluster is created
}

