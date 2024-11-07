resource "aws_rds_cluster" "app1-rds-cluster" {
  cluster_identifier      = "app1-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 0
  tags = {
    yor_name  = "app1-rds-cluster"
    yor_trace = "52760f99-ae33-407e-b9dc-6fc3f386bb66"
  }
}

resource "aws_rds_cluster" "app2-rds-cluster" {
  cluster_identifier      = "app2-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 1
  tags = {
    yor_name  = "app2-rds-cluster"
    yor_trace = "0b71a89a-a142-488e-acc1-3bf99ee6dd94"
  }
}

resource "aws_rds_cluster" "app3-rds-cluster" {
  cluster_identifier      = "app3-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    yor_name  = "app3-rds-cluster"
    yor_trace = "216d0c41-effb-453f-9afb-19737b0f0cbe"
  }
}

resource "aws_rds_cluster" "app4-rds-cluster" {
  cluster_identifier      = "app4-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    yor_name  = "app4-rds-cluster"
    yor_trace = "7896f854-f993-4505-9481-ca98db6bda46"
  }
}

resource "aws_rds_cluster" "app5-rds-cluster" {
  cluster_identifier      = "app5-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    yor_name  = "app5-rds-cluster"
    yor_trace = "d13a6413-73a2-4283-93af-fec09749d841"
  }
}

resource "aws_rds_cluster" "app6-rds-cluster" {
  cluster_identifier      = "app6-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 15
  tags = {
    yor_name  = "app6-rds-cluster"
    yor_trace = "981ea74b-c00d-4357-bf23-9858cf343716"
  }
}

resource "aws_rds_cluster" "app7-rds-cluster" {
  cluster_identifier      = "app7-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    yor_name  = "app7-rds-cluster"
    yor_trace = "7e10dc81-2caa-490a-ba67-c18ee89f86eb"
  }
}

resource "aws_rds_cluster" "app8-rds-cluster" {
  cluster_identifier      = "app8-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    yor_name  = "app8-rds-cluster"
    yor_trace = "4bcf7ce6-c16b-4049-805b-720ebabc26be"
  }
}

resource "aws_rds_cluster" "app9-rds-cluster" {
  cluster_identifier      = "app9-rds-cluster"
  allocated_storage       = 10
  backup_retention_period = 25
  tags = {
    yor_name  = "app9-rds-cluster"
    yor_trace = "655fead0-8b1a-471d-8521-712290c6cfcf"
  }
}
