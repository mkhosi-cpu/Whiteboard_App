module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.26.0"

  cluster_name    = local.cluster_name
  cluster_version = "1.24"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"

  }

  eks_managed_node_groups = {
    one = {
      name = "node-group-1"

      instance_types = ["t2.micro"]

      min_size     = 1
      max_size     = 3
      desired_size = 2
    }

    two = {
      name = "node-group-2"

      instance_types = ["t2.micro"]

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}

#This code calls the EKS module from the official Terraform public module registry. 
#The cluster name is defined using the local variable we created earlier. 
#We can connect the EKS cluster to the VPC and subnets defined earlier by calling the VPC ID and private subnet IDs from the VPC module. 
#We want the cluster to have public access, so set this to true. Define the AMI type using the EKS managed node group defaults argument. 
#Next, define the managed node groups, including the instance types, minimum, maximum, and desired size