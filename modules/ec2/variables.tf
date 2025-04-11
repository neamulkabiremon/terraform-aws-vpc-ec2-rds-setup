variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  type        = string
  
}

variable "vpc_id" {
  description = "The VPC ID where the EC2 security group will be created"
  type        = string
}

variable "key_name" {
  description = "SSH key name for EC2"
  type        = string
}
variable "subnet_id" {
  description = "The subnet ID to launch the EC2 instance in"
  type        = string
  
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into EC2"
  type        = string
}