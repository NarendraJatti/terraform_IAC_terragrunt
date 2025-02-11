resource "local_file" "state" {
  filename = "/root/${var.local-state}"
  content  = var.remote-state
}

Use terraform console and check index(var.sf,"oni") OR to use a one liner:
echo "index(var.sf,\"oni\")" | terraform console
echo 'aws_iam_user.cloud[6].name' | terraform console
String interpolation: Terraform uses ${} for string interpolation. In this case, ${var.local-state} is used to reference the variable var.local-state, which dynamically inserts the value of the variable into the filename attribute.

The terraform taint command is used to manually mark a specific resource in the Terraform state as tainted, meaning that Terraform will force the resource to be destroyed and recreated during the next terraform apply.