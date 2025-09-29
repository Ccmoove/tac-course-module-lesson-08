variable "vpc_id" {
  type = string
  description = "VPC ID"  
  
}

variable "cidr_block" {
  type = string
  description = "CIDR BLOCK"  
  
}

variable "ami" {
  type = string
  description = "AMI for the webserver instance"  
  
}

variable "instance_type" {
  type = string
  description = "Instance Type"  
  
}

variable "webserver_name" {
  type = string
  description = "Name of the webserver"  
  
}