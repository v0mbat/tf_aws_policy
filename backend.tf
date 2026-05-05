terraform {
  backend "s3" {
    bucket  = "tf-aws-policy"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
