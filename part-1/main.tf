resource "aws_instance" "my-wish-i-can-decide" {
    ami = var.ami_id #devops-practice in us-east-1
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all_traffic.name]

    # tags = {
    #     Name = "mongodb"
    #     Enviroment = "DEV"
    #     Terraform = "true"
    #     project = "roboshop"
    #     component = "mongodb"
    # }

    tags = var.tags
}