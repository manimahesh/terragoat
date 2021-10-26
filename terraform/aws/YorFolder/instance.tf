resource "aws_instance" "web" {
  ami           = "ami-a1b2c3d4"
  instance_type = "t2.micro"
  tags = {
    git_commit           = "ed5d8c6ddba9f317c5ac018903bb7f380aac3be3"
    git_file             = "terraform/aws/YorFolder/instance.tf"
    git_last_modified_at = "2021-10-08 05:32:21"
    git_last_modified_by = "manimahesh1@gmail.com"
    git_modifiers        = "manimahesh1"
    git_org              = "manimahesh"
    git_repo             = "terragoat"
  }
}