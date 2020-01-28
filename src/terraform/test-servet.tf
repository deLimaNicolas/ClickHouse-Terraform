module "test-server" {
  source   = "./clickhouse-server"
  ami-id   = "ami-04590e7389a6e577c"
  key-pair =  aws_key_pair.terraform-demo-key.key_name
  name     = "Cickhouse validation"
}
