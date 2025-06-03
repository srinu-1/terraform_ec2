terraform {
  backend "s3" {
    bucket         = "taskec2"
    key            = "terraform.statefile"
    region        = "us-east-1"
  }
}

