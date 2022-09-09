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
    instance_type = var.instance_type_list[count.index]
    count = 2
    tags = {
        Name = "New_Poc_Data${count.index}"
    }  
}