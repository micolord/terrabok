terraform {
  backend "oss" {
    bucket = "dynamic_env-bokbok-bucket"
    key   = "dynamic_env-state.tfstate"
    region = "ap-southeast-6"
  }
}