#resource "aws_s3_bucket" "this" {
#  bucket = var.bucket_name
#  tags = merge({ "resourcename" = "${local.name}" }, local.tags)
#}
# S3 Bucket resource definition
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags = merge({ "resourcename" = "${local.name}" }, local.tags)
}

# Terraform backend configuration
terraform {
  backend "s3" {
    bucket         = "mydata-venkey"                    # S3 bucket name where the state file is stored
    key            = "terraform/state.tfstate"         # Path in the S3 bucket for the state file
    region         = "us-east-1"                       # AWS region where the bucket is located
    encrypt        = true                              # Encrypt the state file in S3
    #dynamodb_table = "terraform-lock-table"            # DynamoDB table for state locking (optional)
  }
}
