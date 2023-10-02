provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "demo-server" {
    ami = "ami-1234567"
    instance_type = "t2.micro"
    key_name = "dpp"
    security_groups = [ "demo-sg" ]
    
  
}

resource "aws_security_group" "demo-sg" {
    name = "demo-sg"
    description = "SSH Access"
    

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0" ]
    }

    tags = {
      "Name" = "allow ssh" 
    }
  
}









