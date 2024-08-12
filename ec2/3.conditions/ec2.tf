
# resource <resource-type> <resource-name>

resource "aws_instance" "DB" {
    ami = var.image_id
    # condition expression
    instance_type = var.instance_name == "DB" ? "t3.small" : "t3.micro"
      
}
