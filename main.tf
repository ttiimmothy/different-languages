# Define the provider for your infrastructure platform.
provider "aws" {
  region = "us-west-2"
}

# Define a resource, in this case, an AWS EC2 instance.
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

# Output the public IP address of the EC2 instance.
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
