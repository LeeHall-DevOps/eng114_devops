
# the service and location
provider "aws" {
        region = "eu-west-1"
}

# create a VPC
resource "aws_vpc" "eng114_Lee_tf_vpc" {
  
  cidr_block       = "10.80.0.0/16"
  instance_tenancy = "default"
  tags = {
      Name = "eng114_Lee_tf_vpc"
  }
}

# create a internet gateway

resource "aws_internet_gateway" "eng114_Lee_tf_ig" {
  vpc_id = aws_vpc.eng114_Lee_tf_vpc.id
  tags = {
    Name = "eng114_Lee_tf_ig"
  }
}

# create a public and a private subnets

resource "aws_subnet" "eng114_Lee_tf_public_subnet" {
  vpc_id     = aws_vpc.eng114_Lee_tf_vpc.id
  cidr_block = "10.80.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1a"

  tags = {
    Name = "eng114_Lee_tf_public_subnet"
  }
}

resource "aws_subnet" "eng114_Lee_tf_private_subnet" {
  vpc_id     = aws_vpc.eng114_Lee_tf_vpc.id
  cidr_block = "10.80.10.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-west-1a"

  tags = {
    Name = "eng114_Lee_tf_private_subnet"
  }
}

# app security group

resource "aws_security_group" "app_security_group" {
  name        = "app-security_group"
  description = "Allow port 80"
  vpc_id      = aws_vpc.eng114_Lee_tf_vpc.id

  ingress {
   from_port   = 22
   to_port     = 22 
   protocol    = "tcp"
   cidr_blocks = ["${chomp(data.http.myip.body)}/32"]
 }

# All Traffic inbound
  ingress {
   from_port   = 80
   to_port     = 80
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }

 ingress {
   from_port   = 3000
   to_port     = 3000
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
  }

 tags = {
    Name = "eng114_Lee_tf_app_sg"
  }

# All Traffic outbound
  egress = [ {
    description = "Port out for 27017"
    from_port = 27017
    ipv6_cidr_blocks = [ "0.0.0.0/0" ]
    protocol = "-1"
    to_port = 27017
  } ]

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app_instance"{
# choose your ami and instance type
        ami = "ami-0b47105e3d7fc023e"
        instance_type = "t2.micro"
    subnet_id = "${aws_subnet.eng114_Lee_tf_public_subnet.id}"

# enable a public ip
    associate_public_ip_address = true

# name the instance
    tags = {
        Name = "eng114_Lee_tf"
    }
}