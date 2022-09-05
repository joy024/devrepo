output "server_ip_addr_dev_ws" {
    value = aws_instance.dev-ws.private_ip
}


output "server_ip_addr_pub_dev_ws" {
    value = aws_instance.dev-ws.public_ip
}


output "instance_id" {
    value = aws_instance.dev-ws.id
}

output "vol_id" { value = aws_ebs_volume.sda2.id }

