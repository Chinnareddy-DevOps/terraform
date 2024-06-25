#ec2 variables
variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend" ]
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

# sg variables

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
#r53 variables
variable "zone_id" {
    default = "Z08422883FRLSZ1ROER1K"
}

variable "domain_name" {
    default = "chinna.online"
}