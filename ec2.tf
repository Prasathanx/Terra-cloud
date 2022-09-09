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
    ami = data.aws_ami.dep.id
    instance_type = "t2.micro"
    tags = {
        Name = "New_Poc_Data"
    }  
}
