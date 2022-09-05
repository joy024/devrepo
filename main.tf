
# creating a volume named sda2

resource "aws_ebs_volume" "sda2" {
  availability_zone = var.az
  size              = 20
  tags = var.tags
}

# provisioning ec2 instance

resource "aws_instance" "dev-ws" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key
    subnet_id = var.subnet
    tags = var.tags


    provisioner "remote-exec" {
        inline = [
            "sudo yum update -y",
            "sudo mkdir /tmp/sukumar",
            "sudo yum install -y httpd"
            "sudo systemctl start httpd"
        ]
    }
    connection {
    
    host = aws_instance.dev-ws.public_ip
    type = "ssh"
    user = "centos"
    private_key = file(var.private_key)
    }
}

# attached the vol sda2

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sda2"
  volume_id   = aws_ebs_volume.sda2.id
  instance_id = aws_instance.dev-ws.id
}
