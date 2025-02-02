## Deploy AWS EC2 Instance Using Terraform Variables

This repository contains Terraform scripts to provision an AWS EC2 instance using variables for configuration. Terraform allows you to manage cloud resources efficiently as Infrastructure as Code (IaC).

## ec2var.tf:

The Terraform configuration file that provisions an EC2 instance without hardcoded the values.
In this file we also define the variables for configuartion purpuse.


 ## why variables:
 
 Variables in Terraform are used to make your infrastructure code dynamic, flexible, and reusable. They allow you to define configurations that can be customized when deploying resources. 


 ## ec2var.tfvars

 This file contains values for the declared variables in ec2var.tf.
When we run terraform apply it will automatically fetches the details of each configuration from the ec2var.tfvars file.

## Variable Declearation:

variable "ami_id" {

  description = "AMI ID for EC2 instance"
  type        = string

}

variable "instance_type" {

  description = "Type of EC2 instance"
  type        = string
  
}

variable "key_name" {

  description = "The name of the SSH key pair to use for the EC2 instance"
  type        = string
  
}

Commands to run:

terraform init

terraform plan

terraform apply

check the instance status manually from aws console

terraform destroy


## Only One Provider File:
There should only be one .tf file with provider details in the folder. If you have more than one provider configuration file, Terraform will encounter conflicts. All provider configurations should be placed in the single main.tf file.
