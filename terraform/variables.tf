variable "prefix" {
  description = "Prefix for all resources"
  default     = "OmerDevops"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

# USE DEFAULT SUBNET CIDR FROM YANIV VPC
# variable "subnet_cidr" {
#   description = "CIDR block for subnet"
#   default     = "172.31.96.0/20"
# }

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.medium"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0c7217cdde317cfec"
}
