resource "aws_key_pair" "terraform-demo-key" {
  key_name   = "terraform-demo-key"
  public_key = file("./terraform_demo.pem")
}
