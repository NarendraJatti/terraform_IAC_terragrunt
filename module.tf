#module>set of terraform configuartion files
#avoids duplication of code,resuses already created tf config files
#root and child modules 
#

module "iam_iam-user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "5.28.0"
  # insert the 1 required variable here
  name                          = "max"
  create_iam_user_login_profile = false
  create_iam_access_key         = false
}
module "dev-server"" {
    source ="../aws-instance" #location where ec2 tf config files are stored
  
}