variable "aws_region" {
  default = "eu-west-3"
}

variable "aws_profile" {
  default = "default"
}

variable "runtime" {
  type    = string
  default = "python3.8"
}

variable "group_id" {
  type    = string
}
