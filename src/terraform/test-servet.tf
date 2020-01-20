module "test-server" {
  source   = "./clickhouse-server"
  ami-id   = "ami-09de7b4017733e2af"
  key-pair =  aws_key_pair.terraform-demo-key.key_name
  name     = "Test Server"
}
