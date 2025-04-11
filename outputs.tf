output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2.instance_public_ip
}

output "rds_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = module.rds.db_endpoint
  
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
  
}

output "public_subnet" {
  value = module.vpc.public_subnet_ids[0]
}