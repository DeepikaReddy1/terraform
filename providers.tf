provider "aws" {
  access_key = "AKIAIQYLYBA2AO2TIRMA"
  secret_key = "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"
  region     = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "my-terraform-myaws"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
 access_key = "AKIAIQYLYBA2AO2TIRMA"
  secret_key = "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"
  }
}


