aws_region       = "us-east-1"
vpc_id           = "vpc-0d54bf81a18013e3a"
igw_id           = "igw-0432b62d054d1283d"

public_subnet_ids = [
  "subnet-074fbee8851648002"
]

private_subnet_ids = [
  "subnet-062ab8e4bc1c980f4",
  "subnet-04870880ca5c230ee"
]

cluster_name      = "multi-tier-cluster"

create_kms_key = false 
