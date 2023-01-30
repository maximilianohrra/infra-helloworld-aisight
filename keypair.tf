#resource AWS key pair from local public key file.
resource "aws_key_pair" "example" {
  key_name   = "max-root-aisight"
  public_key = file("~/.ssh/clave_aws.pub")
}
