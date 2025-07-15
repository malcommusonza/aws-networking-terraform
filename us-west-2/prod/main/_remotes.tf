data "terraform_remote_state" "global_remote" {
  backend = "s3"
  config = {
    bucket = "malcommusonza-project-globalnetworking-s3-for-state"
    key    = "global/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "global_prod_main_remote" {
  backend = "s3"
  config = {
    bucket = "malcommusonza-project-globalnetworking-s3-for-state"
    key    = "global/prod/main/terraform.tfstate"
    region = "us-east-1"
  }
}
