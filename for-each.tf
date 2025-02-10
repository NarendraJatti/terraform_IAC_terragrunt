resource "local_file" "pet" {
  filename = var.filename[count.index]

#   count =3
  count = length(var.filename)
}

above using for-each,count recreates resources 

resource "local_file" "pet" {
  filename = each.value

#   count =3
  for_each = toset(var.filename)
}
