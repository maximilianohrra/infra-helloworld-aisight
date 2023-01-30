#
#   Install Docker, Docker Compose, Nginx, Ansible on EC2 instance.
######################
resource "null_resource" "install_docker" {
provisioner "remote-exec" {
inline = [
    
    "sudo apt-get update",
    "sudo apt-get install -y docker.io",
    "sudo usermod -aG docker ${var.username}",
    "sudo systemctl start docker",
    "sudo systemctl enable docker"
]
connection {
    host = aws_instance.instancia-2.public_ip
    type = "ssh"
    user = var.username
    private_key = file("~/.ssh/clave_aws")
    }
  }
}

resource "null_resource" "install_docker_compose" {
  provisioner "remote-exec" {
    inline = [ 
        "sudo apt-get update",
        "sudo apt-get -y install docker-compose"
    ]
  connection {
    host = aws_instance.instancia-2.public_ip
    type = "ssh"
    user = var.username
    private_key = file("~/.ssh/clave_aws")
    }
  }
}



resource "null_resource" "install_nginx" {
provisioner "remote-exec" {
inline = [
    "sudo apt-get update",
    "sudo apt-get install -y nginx"
]
connection {
    host = aws_instance.instancia-2.public_ip
    type = "ssh"
    user = var.username
    private_key = file("~/.ssh/clave_aws")
    }
  }
}


resource "null_resource" "install_ansible" {
provisioner "remote-exec" {
inline = [
    "sudo apt-get update",
    "sudo apt-get install ansible -y"
]
connection {
    host = aws_instance.instancia-2.public_ip
    type = "ssh"
    user = var.username
    private_key = file("~/.ssh/clave_aws")
    }
  }
}