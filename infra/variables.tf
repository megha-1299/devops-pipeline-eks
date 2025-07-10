variable "aws_region"     { default = "us-east-1" }
variable "cluster_name"   { default = "eks-demo"  }
variable "desired_nodes"  { default = 2 }
variable "max_nodes"      { default = 3 }
variable "min_nodes"      { default = 1 }
variable "node_instance"  { default = "t3.medium" }

