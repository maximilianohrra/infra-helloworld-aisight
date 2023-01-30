provider "aws" {
  access_key = ""
  secret_key = ""
  region = var.aws_region
}

variable "aws_region" {
  default = "us-east-1"
}

variable "aws_ami" {
  default = "ami-0ac019f4fcb7cb7e6"
}

variable "aws_instance_type" {
  default = "t2.micro"
}

variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}

variable "username" {
  default = "ubuntu"
}

variable "ngroktoken" {

  default =  ""
}