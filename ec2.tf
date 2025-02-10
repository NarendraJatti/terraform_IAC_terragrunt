resource "aws_instance" "webserver" {
    ami = "ami-0123xxx"
    instance_type = "t2.micro"
    
    count = 3
  
}
