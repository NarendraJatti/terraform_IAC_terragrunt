resource "local_file" "whale" {
    filename = "/root/whale"
    content = "whale"

    count = 5
  
  depends_on = [ local_file.krill ]
}

resource "local_file" "krill" {
    filename = "/root/krill"
    content = "krill"
  
}