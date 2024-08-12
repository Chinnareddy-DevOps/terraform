


resource "aws_instance" "DB" {

    ami = "ami-041e2ea9402c46c32"
     vpc_security_group_ids = [aws_security_group.allow_ssh.id]  #list
      instance_type = "t3.micro"


     tags = {
        Name = "DB"
  }
}

# resource <resource-type> <resource-name>
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing ssh access"
    #inbound
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    #outbound
    egress {
        from_port        = 0 # from 0 to 0 means opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }
 
    tags = {
    Name = "allow_ssh"
    CreatedBy = "ChinnaReddy"
    }

}


