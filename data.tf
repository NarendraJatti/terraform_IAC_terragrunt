data "aws_ami" "latest" {
  owners      = ["amazon"]
  most_recent = true
}
