variable "region" {
  default = us-east-1
}

variable "ami_id" {
  type = string

  default = {
    us-east-1    = "ami-0dc2d3e4c0f9ebd18"
    eu-west-2    = "ami-03ac5a9b225e99b02"
    eu-central-1 = "ami-00f22f6155d6d92c5"
  }
}
