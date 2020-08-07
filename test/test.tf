provider "aws" {
  //バージョンを固定
  version = "2.23.0"
  region  = "ap-northeast-1"
}

//provider "aws" {
//  region                  = "ap-northeast-1"
//  // shared_credentials_file = "/tmp/sts_aws_credentials/pairs-jp"
//  version                 = "= 2.63.0"
//}
//
//provider "aws" {
//  alias                   = "pairs-jp"
//  region                  = "ap-northeast-1"
//  //shared_credentials_file = "/tmp/sts_aws_credentials/pairs-jp"
//  version                 = "= 2.63.0"
//}
//

terraform {
  backend "remote" {
    organization = "eureka-sre"

    workspaces {
      name = "ci_test"
    }
  }
}

resource "aws_iam_user" "test" {
  name = "test"
  path = "/"
}