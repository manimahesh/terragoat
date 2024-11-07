resource "aws_s3_bucket" "data" {
  bucket        = "mmani-yor-data1"
  acl           = "public-read"
  force_destroy = true
  tags = {
    git_commit           = "411d6f334faf566c21003395503103b055cfbe0e"
    git_file             = "mmani-s3.tf"
    git_last_modified_at = "2021-10-21 17:35:48"
    git_last_modified_by = "manimahesh1@gmail.com"
    git_modifiers        = "manimahesh1"
    git_org              = "manimahesh"
    git_repo             = "terragoat"
    yor_name             = "data"
    yor_trace            = "f99c7fe6-170f-4107-b251-209cbd9b0084"
  }
}
