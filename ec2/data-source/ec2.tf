resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-03af681e78364465b" ]
    instance_type = "t3.micro"
    tags = {
        Name = "data-source-practice"
    }
}