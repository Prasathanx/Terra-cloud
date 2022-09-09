data "aws_ami" "dep" {
    most_recent = true
    owners = [ "amazon"]
    filter {
      name = "name"
      values = ["amzn2-ami-*"]
    }
    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

resource "aws_instance" "New_Poc" {
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"
    tags = {
        Name = "New_Poc_Data"
    }  
}
