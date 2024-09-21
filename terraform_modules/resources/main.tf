
module "vpc" {
  source = "../modules/VPC"
}
module "aws_instance_1" {
  source                      = "../modules/EC2"
  ami                         = var.ami
  subnet_id                   = module.vpc.pub_sub1
  vpc_security_group_ids      = [module.vpc.webSg]
  associate_public_ip_address = true

}
module "aws_instance_2" {
  source                      = "../modules/EC2"
  ami                         = var.ami
  subnet_id                   = module.vpc.pvt_sub1
  vpc_security_group_ids      = [module.vpc.webSg]
  associate_public_ip_address = false

}
