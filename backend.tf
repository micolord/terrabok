terraform {
  backend "oss" {
    bucket = "dynamic_env-bok-bucket"
    key   = "dynamic_env-state.tfstate"
    region = "ap-southeast-6"
  }
}