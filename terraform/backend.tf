terraform {
  backend "s3" {
    bucket = "react-web-app-bucket-vaishnavi-aws"
    key    = "luxe-escapes/terraform.tfstate"
    region = "ap-south-1"
  }
}
