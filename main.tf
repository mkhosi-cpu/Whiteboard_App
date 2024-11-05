provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = "eks-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}
#This code defines our provider configurations with a Kubernetes module, and defines the AWS region via a variable. 
#The data block pulls the available availability zones within the set region and creates a data set of these zones. 
#The locals variable cluster_name uses a random string to create a unique EKS cluster name. The random string constraints are defined in the resource block.