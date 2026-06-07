aws_region   = "us-east-1"
project_name = "soc-scada"
environment  = "dev"

vpc_cidr = "10.0.0.0/16"

availability_zones = [
  "us-east-1a",
  "us-east-1b"
]

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

private_subnet_cidrs = [
  "10.0.11.0/24",
  "10.0.12.0/24"
]

allowed_admin_cidr = "41.33.136.54/32"

ec2_instance_type   = "t3.micro"
ec2_key_name        = "soc-scada-dev-key"
ec2_public_key_path = "~/.ssh/soc-scada-dev.pub"

eks_cluster_version     = "1.30"
eks_node_instance_types = ["t3.small"]
eks_desired_size        = 2
eks_min_size            = 2
eks_max_size            = 2
