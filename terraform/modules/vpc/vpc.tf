resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = { Name = var.vpc_name }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.public_az
  map_public_ip_on_launch = true
  tags = { Name = "public-subnet" }
}