resource "aws_s3_bucket" "b" {
  bucket = "my-terraform-myaws"
  acl    = "private"

  tags {
    Name        = "Myterraformbucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_object" "b_object" {
  bucket = "${aws_s3_bucket.b.id}"
  source= "/dev/null"
  key    = "terraform/terraform.tfstate"
}

