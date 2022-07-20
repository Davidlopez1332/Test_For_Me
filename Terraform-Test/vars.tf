
variable "ami" {       
  type = string
}
 
variable "instance_type" {    
  type = string
}

variable "region" {
  default = "us-west-2"
}

variable "availability_zones" {
  default = ["us-west-2a", "us-west-2a", "us-west-2a"]
}

variable "subnets"{

   default = "aws_subnet.my_subnet[count.index]"
   type = string

}