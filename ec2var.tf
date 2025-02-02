variable "subnet_id"{
description="Subnet id"
}

provider "aws"{
region="us-east-1"
}
resource "aws_instance" "example"{
ami=var.ami_id
instance_type=var.instance_type_value
subnet_id=var.subnet_id
}
