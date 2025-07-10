provider "aws" {
  region  = var.aws_region                   # Choose AWS region dynamically via variable
  profile = var.aws_profile                  # Use a specific AWS CLI profile
}
