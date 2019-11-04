terraform {
  backend "s3" {
    bucket = "pgr301bucket"
    key    = "EnKeySomErUnikBananAppelsinSmoothie2019/terraform.tfstate"
    region = "eu-north-1"
  }
}
