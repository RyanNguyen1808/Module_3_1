provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce11-tfstate"
    key    = "ryan-3-1-tfstate.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "ryan-3-1-test-bucket"
}