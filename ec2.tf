resource "aws_instance" "New_Poc" {
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"
    tags = {
        Name = "New_Poc_Data"
    }  
}
