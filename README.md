# Terraform AWS VPC + EC2 + RDS Modular Infrastructure

This project demonstrates how to provision a **production-like infrastructure** on AWS using **Terraform modules**. It includes a custom VPC, a public EC2 instance (bastion or web server), and a private RDS MySQL database — all set up securely using best practices.

---

## 🏗️ What’s Inside?

✅ **Modular Terraform Code** — clean, reusable, and easy to maintain  
✅ **VPC Setup** — with public/private subnets across 2 Availability Zones  
✅ **EC2 Instance** — public, SSH-accessible with injected key  
✅ **RDS MySQL Instance** — private, password stored in SSM Parameter Store  
✅ **Remote Backend** — S3 + DynamoDB for state storage & locking  
✅ **Security Groups** — with tightly scoped rules for access control  
✅ **Automated SSH Key & MySQL Client Setup** — via `user_data` script

---

## ⚙️ Prerequisites

- AWS CLI configured
- Terraform v1.0+
- SSH key pair for EC2
- S3 bucket & DynamoDB table (if using backend)

---

## 🚀 Usage

### 1. Clone the Repo

```bash
git clone git@github.com:neamulkabiremon/terraform-aws-vpc-ec2-rds.git
cd terraform-aws-vpc-ec2-rds
```

2. Initialize Terraform
```bash
terraform init
```
4. Review the Plan
```bash
terraform plan
```
5. Apply the Infrastructure
```bash
terraform apply -auto-approve
```
6. SSH into EC2
```bash
chmod 400 my-ec2-key
ssh -i my-ec2-key ec2-user@<EC2_PUBLIC_IP>
```
7. Connect to RDS from EC2
```bash
mysql -h <RDS_ENDPOINT> -u admin -p
(Password is stored in AWS SSM Parameter Store)
```
## 🧹 Cleanup
To avoid unexpected AWS charges:
```bash
terraform destroy --auto-approve
```

## 📌 Notes
- RDS is deployed in private subnets
- EC2 is in public subnet for testing
- All secrets are securely managed using SSM Parameter Store
- SSH key is excluded via .gitignore

## 📚 Learn More
- Terraform AWS Provider Docs
- Terraform Modules Guide

## GitHub
If you found this helpful, give it a ⭐ on GitHub:
https://github.com/neamulkabiremon/terraform-aws-vpc-ec2-rds

## 👋 Connect With Me
**Neamul Kabir Emon
**🔗 [LinkedIn](https://www.linkedin.com/in/neamul-kabir-emon/)



