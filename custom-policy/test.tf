resource "aws_s3_bucket" "no_tags" {
  bucket = "bucket-without-tags"
}

resource "aws_s3_bucket" "partial_tags" {
  bucket = "bucket-partial-tags"
  tags = {
    owner = "devops-team"
  }
}

resource "aws_s3_bucket" "full_tags" {
  bucket = "bucket-with-all-tags"
  tags = {
    owner       = "devops-team"
    environment = "production"
    project     = "ecommerce"
  }
}
