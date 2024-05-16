terraform {
  backend "s3" {
    bucket = "riyanbucket"
    key    = "riyan/terraform.tfstate"
    region = "us-east-1"
  }
}