
variable "instance_names" {
    type = list
    default = ["DB", "Backend", "Frontend" ]
}

variable "image_id" {
  type    = string
  default = "ami-031d574cddc5bb371" #Optional
  description = "RHEL 9 AMI ID" #optional
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "common_tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        Teffaform = "true"

    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}
variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}