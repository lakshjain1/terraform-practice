resource "aws_instance" "my-wish-i-can-decide" {
    ami = var.ami_id #devops-practice in us-east-1
    instance_type = var.instance_name == "Laksh" ? "t3.micro" : "t2.micro"  
    
    # tags = {
    #     Name = "mongodb"
    #     Enviroment = "DEV"
    #     Terraform = "true"
    #     project = "roboshop"
    #     component = "mongodb"
    # }

}