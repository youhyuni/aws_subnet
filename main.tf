# resource "aws_subnet" "terra_public_subnet" {
#   count      = 2
#   vpc_id     = aws_vpc.terra_vpc.id
#   cidr_block = "10.0.${count.index}.0/24"
#   # 짝수 번호는 가용영역 a 로 홀수 번호는 가용영역 b 로 설정
#   availability_zone       = "${var.aws_region}${count.index % 2 == 0 ? "a" : "b"}"
#   map_public_ip_on_launch = true
#   tags = {
#     Name      = "terra_public_subnet${count.index + 1}"
#     createdBy = "terraform"
#   }
# }
resource "aws_subnet" "terra_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  availability_zone       = var.az
  map_public_ip_on_launch = var.is_public
  tags = {
    Name      = "terra_subnet"
    createdBy = "terraform"
  }
}
