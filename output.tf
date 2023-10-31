output "subnet_id" {
  value = aws_subnet.terra_subnet.id
  description = "생성된 서브넷 ID 정보 입니다."
}

output "az" {
  value = aws_subnet.terra_subnet.availability_zone
  description = "생성된 서브넷이 소속된 가용영역 정보 입니다."
}
