variable "instance_type_list" {
    description = "Ec2 instance Type"
    type = list(string)
    default = ["t2.micro","t2.small"]  
}