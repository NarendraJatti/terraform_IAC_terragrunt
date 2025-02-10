   terraform {
     backend "s3" {
        bucket = "bucket-name"
        key = "folder/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "table-created"
       
     }
   }