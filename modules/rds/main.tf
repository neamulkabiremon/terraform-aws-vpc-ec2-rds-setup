resource "aws_db_subnet_group" "main" {
  name = "main-db-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "db-subnet-group"
  }
}

resource "aws_db_instance" "main" {
  allocated_storage = 20
  engine = "mysql"
  engine_version = "8.0"
  instance_class = "db.t3.micro"
  username = var.username
  password = var.password  
  db_subnet_group_name = aws_db_subnet_group.main.name
  vpc_security_group_ids = var.vpc_security_group_ids
  skip_final_snapshot = true

  tags = {
    Name = "my-db-instance"
  }
}