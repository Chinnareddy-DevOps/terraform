
variable "image_id" {
  type    = string
  default = "ami-031d574cddc5bb371" #Optional
  description = "RHEL 9 AMI ID" #optional
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "instance_name" {
  default = "backend"
}
