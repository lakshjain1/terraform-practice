resource "aws_instance" "my-wish-i-can-decide" {
    ami = var.ami_id #devops-practice in us-east-1
    count = 3
    instance_type = var.instance_name[count.index] == "second" || var.instance_name[count.index] == "third" ? "t3.medium" : "t2.micro"
    

    tags = {
        Name = var.instance_name[count.index]
    }
}

resource "aws_route53_record" "record" {
  zone_id = var.zore_id
  name    = "www.example.com"
  type    = "A"
  ttl     = 300
  records = [aws_eip.lb.public_ip]
}