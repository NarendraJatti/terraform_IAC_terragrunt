terraform {
  source = "tfr://terraform-aws-modules/vpc/aws//?version=5.8.1"
}

inputs = {
    name = "test-vpc"
}