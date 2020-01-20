variable "ami-id" {
  type = string
}

variable "iam-instance-profile" {
  default = ""
  type    = string
}

variable "instance" {
  default = "t2.micro"
  type    = string
}

variable "name" {
  type = string
}

variable "key-pair" {
  type = string
}

variable "private-ip" {
  default = ""
  type    = string
}

variable "subnet-id" {
  type = string
}

variable "vpc-security-groups-ids" {
  default = []
  type    = list(string)
}
