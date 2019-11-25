terraform {
  backend "s3" {
    bucket = "pgr301bucket2"
    key    = "EnKeySomErUnikBananAppelsinSmoothie2019-skb/terraform.tfstate"
    region = "eu-west-1"
  }
}
