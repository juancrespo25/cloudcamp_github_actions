resource "aws_vpc" "main" {
  cidr_block = var.cidr
  tags = {
    Name = "Github actions v2"
  }
}

resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.cidr, 8, 1)
  tags = {
    Name = "public-1-github_actions"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.cidr, 8, 2)
  tags = {
    Name = "public-2-github_actions"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}
