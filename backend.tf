## Terraform Remote State - Stores Terraform state in S3
terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "minion-cr/terraform.tfstate"
    region = "us-east-1"
  }
}
