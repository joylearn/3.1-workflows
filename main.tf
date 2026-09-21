terraform {
  backend "s3" {
    bucket       = "sctp-tfsate-ce13"
    key          = "jl/31-workflow.tfstate"
    region       = "us-east-1"
  }
}

provider "aws" {
   region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "jl-31-workflows"
  tags = {
    Purpose = "github-actions-workshop"
  }
}