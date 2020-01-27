resource "aws_instance" "default" {
  ami                     = var.ami-id
  iam_instance_profile    = var.iam-instance-profile
  instance_type           = var.instance-type
  key_name                = var.key-pair
  private_ip              = var.private-ip
  subnet_id               = var.subnet-id
  security_groups         = ["${aws_security_group.allow_ssh.name}"]

   user_data = <<-EOF
#!/bin/bash
echo "test0"
sudo yum install yum-utils
echo "test1"
sudo rpm --import https://repo.yandex.ru/clickhouse/CLICKHOUSE-KEY.GPG
sudo yum-config-manager --add-repo https://repo.yandex.ru/clickhouse/rpm/stable/x86_64
echo "test2"
sudo yum -y install clickhouse-server clickhouse-client
echo "test3"
sudo service clickhouse-server start
EOF
   
  
  tags = {
  Name = var.name
}

}

resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "public_dns" {
  value = "${aws_instance.default.public_dns}"
}