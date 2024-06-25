resource "aws_instance" "db" {

    ami = "ami-031d574cddc5bb371"
     vpc_security_group_ids = ["sg-03af681e78364465b"]
      instance_type = "t3.micro"


     tags = {
        Name = "db"
  }
}
