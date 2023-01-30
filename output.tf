output "instance_ip" {
value = aws_instance.instancia-2.public_ip
}

output "instance_name" {
value = aws_instance.instancia-2.tags.Name
}

