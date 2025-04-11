terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-1486"
    key            = "vpc-ec2-rds/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
