
# CentOS 7 AMI 코드를 가져온다.

data "aws_ami" "centos" {
  owners = [679593333241]
  most_recent = true

  filter {
    name = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }

  filter {
    name = "architecture"
    values = ["x86_64"]
  }

  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
}
