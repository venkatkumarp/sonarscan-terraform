#resource "aws_s3_bucket" "this" {
#  bucket = var.bucket_name
#  tags = merge({ "resourcename" = "${local.name}" }, local.tags)
#}
# S3 Bucket resource definition
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags = merge({ "resourcename" = "${local.name}" }, local.tags)
}

