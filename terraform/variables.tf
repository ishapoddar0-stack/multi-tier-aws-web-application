variable "project_name" {
  description = "Name prefix used for all resources"
  type        = string
  default     = "multi-tier-webapp"
}

variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-south-1"
}

variable "azs" {
  description = "Availability Zones to spread subnets across"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "ami_id" {
  description = "AMI ID for app-tier EC2 instances (Amazon Linux 2)"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  description = "EC2 instance type for app tier"
  type        = string
  default     = "t3.micro"
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Initial database name"
  type        = string
  default     = "appdb"
}

variable "db_username" {
  description = "Master username for RDS"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Master password for RDS (pass via terraform.tfvars, never commit real values)"
  type        = string
  sensitive   = true
}

variable "alert_email" {
  description = "Email address to receive CloudWatch alarm notifications"
  type        = string
}
