provider "aws" {
    region = "eu-west-2"
}

module "ec2" {
    source = "./ec2"
    for_each = toset(["production", "staging", "development"])
}