module "test-server" {
  source   = "./clickhouse-server"
  ami-id   = "ami-0119aa4d67e59007c"
  key-pair =  aws_key_pair.terraform-demo-key.key_name
  name     = "Test Server"
}
