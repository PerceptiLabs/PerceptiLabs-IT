terraform {
  backend "s3" {
    bucket = "pl-itsre-terraform-state"
    key    = "us-east-1/it-sre-apps/vpc/terraform.tfstate"
    region = "us-east-1"
