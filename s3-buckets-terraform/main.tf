provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "chimdi-bucket-1"

  tags = {
    Name        = "chimdi-bucket-1"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket1_versioning" {
  bucket = aws_s3_bucket.bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "chimdi-bucket-2"

  tags = {
    Name        = "chimdi-bucket-2"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "bucket2_versioning" {
  bucket = aws_s3_bucket.bucket2.id
  versioning_configuration {
    status = "Enabled"
  }
}
