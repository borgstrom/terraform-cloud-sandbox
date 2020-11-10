# main.tf

provider "aws" {
    version = "~> 3.14"
    region = "us-east-2"
    alias = "us-east-2"
}

provider "aws" {
    region = "us-west-2"
    alias = "us-west-2"
}

module "easty" {
    source = "../../modules/helloworld"
    providers = {
        aws = "aws.us-east-2"
    }
}

module "westy" {
    source = "../../modules/helloworld"
    providers = {
        aws = "aws.us-west-2"
    }
}
