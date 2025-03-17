data "aws_vpc" "existing" {
  id = "vpc-044604d0bfb707142"
}
# USE DEFAULT SUBNET FROM YANIV VPC
# resource "aws_subnet" "public" {
#   vpc_id                  = data.aws_vpc.existing.id
#   cidr_block              = var.subnet_cidr
#   map_public_ip_on_launch = true
#   tags = {
#     Name = "${var.prefix}-public-subnet"
#   }
# }

data "aws_internet_gateway" "existing" {
  filter {
    name   = "attachment.vpc-id"
    values = [data.aws_vpc.existing.id]
  }
}

resource "aws_route_table" "public" {
  vpc_id = data.aws_vpc.existing.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.existing.id
  }
  tags = {
    Name = "${var.prefix}-public-rt"
  }
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = data.aws_subnet.existing_public.id
  route_table_id = aws_route_table.public.id
}
