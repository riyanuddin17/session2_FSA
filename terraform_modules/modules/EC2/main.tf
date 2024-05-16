provider "aws"{
    region = "us-east-1"
} 

resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = "key1"
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  associate_public_ip_address= var.associate_public_ip_address
  user_data = base64encode(file("./EC2/userdata.sh"))

  tags = {
    Name = "HelloWorld"
  }
}