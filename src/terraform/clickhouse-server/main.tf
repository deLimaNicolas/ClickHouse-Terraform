resource "aws_instance" "default" {
  ami                     = var.ami-id
  iam_instance_profile    = var.iam-instance-profile
  instance_type           = var.instance-type
  key_name                = var.key-pair
  private_ip              = var.private-ip
  subnet_id               = var.subnet-id
  vpc_security_groups_ids = var.vpc-security-groups-ids
  
  tags = {
  Name = var.name
}

}