variable "ami_id" {
  type    = string
  default = "ami-07caf09b362be10b8"
}

variable "instance_name" {
  type    = string
  default = "Laksh1"
}

variable "security_group" {
  default = "allow-all-traffic"
}

variable "sg_cidr" {
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  type        = map
  default     = {
    Name = "mongodb"
      Enviroment = "DEV"
      Terraform = "true"
      project = "roboshop"
      component = "mongodb"
  }
}

