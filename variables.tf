# variables we can call throughout the project

variable "ami_id" {
  description = "AMI ID for EC2"            # Human-readable description for documentation
  type        = string                      # Input must be a string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"                  # Provide a default (can be overridden in tfvars)
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "subnet_id" {
  description = "ID of the public subnet"
  type        = string
}

variable "security_group_id" {
  description = "Security group for the instance"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}
