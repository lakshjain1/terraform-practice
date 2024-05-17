variable "ami_id" {
  type    = string
  default = "ami-07caf09b362be10b8"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "security_group" {
  default = "allow-all-traffic"
}

variable "instance_name" {
  type        = list
  default     = ["first", "second", "third"]
}

variable "sg_cidr" {
  type        = list(any)
  default     = ["0.0.0.0/0"]
}



