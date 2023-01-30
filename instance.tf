resource "aws_instance" "instancia-2" {
  ami           = var.aws_ami
  instance_type = var.aws_instance_type

  vpc_security_group_ids = [aws_security_group.helloworld_sg.id]
  key_name               = aws_key_pair.example.key_name

  tags = {
    Name = "aisight-instance"
  }

}


