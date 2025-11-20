
provider "aws" {
  region = "us-east-1" 
}

# Define the S3 bucket resource
resource "aws_s3_bucket" "my_example_bucket" {
  bucket = "aiops-test-s3-bucket-hgf4f"
  acl    = "private"

  tags = {
    Name        = "AIOpsPowered"
    Environment = "Dev"
  }
}

# Output the bucket's ID
output "s3_bucket_id" {
  value = aws_s3_bucket.my_example_bucket.id
}

# Output the bucket's ARN
output "s3_bucket_arn" {
  value = aws_s3_bucket.my_example_bucket.arn
}
