variable "ami" {
    type = string
    default = "ami-0667149a69bc2c367"
}

variable "instance_type" { default = "t2.medium" }
variable "key" { default = "docker-svr-suku" } 
variable "subnet" { default = "subnet-0e8281328042b2fa4"  }
variable "az" { default = "ap-south-1a" }
variable "private_key" { default = "/root/.ssh/docker-svr-suku.pem" }

variable "tags" {
    type = map(string)
    default = {
        Name = "terraform-poc"
        env = "dev"
        buildby = "terraform"
    }
}
