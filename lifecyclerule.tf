resource "local_file" "name" {
  filename = "test-location"

  lifecycle {
    create_before_destroy = true 
  }
}

resource "local_file" "name" {
  filename = "test-location"

  lifecycle {
    prevent_destroy  = true 
  }
}