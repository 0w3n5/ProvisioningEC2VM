# variables we can call throughout the project

# set the aws region

variable "aws_region" {
  type    = string
  default = "eu-west-2"
}


# sets amu as a string variable you can change later in terraform

variable "ami_id" {
  type = string
}

# selects the type of EC2 instance we will call

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
