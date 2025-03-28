# Example resource - replace with your actual resources
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  tags = merge(
    {
      Name = var.bucket_name
    },
    local.tags
  )
} 