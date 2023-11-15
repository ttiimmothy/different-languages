# Define variables
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

# AWS provider configuration
provider "aws" {
  region = var.region
}

# AWS EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI
  instance_type = var.instance_type
}

# Output the instance ID
output "instance_id" {
  value = aws_instance.example.id
}
