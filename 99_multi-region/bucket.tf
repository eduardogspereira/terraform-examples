terraform {
  required_version = ">= 0.12.0"
}

resource random_uuid bucket_prefix {}

resource aws_s3_bucket "us_east_1" {
  bucket   = "us-east-1${random_uuid.bucket_prefix.result}"
  provider = aws.us_east_1
}

resource aws_s3_bucket "us_west_2" {
  bucket   = "us-west-2${random_uuid.bucket_prefix.result}"
  provider = aws.us_west_2
}

output "bucket_names" {
  value = [
    aws_s3_bucket.us_east_1.bucket,
    aws_s3_bucket.us_west_2.bucket,
  ]
}
