module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "19.21.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.29"
  subnet_ids      = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id

  eks_managed_node_groups = {
    default = {
      desired_size = var.desired_nodes
      max_size     = var.max_nodes
      min_size     = var.min_nodes
      instance_types = [var.node_instance]
    }
  }
}

