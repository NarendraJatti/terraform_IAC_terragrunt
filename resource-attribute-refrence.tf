resource "local_file" "pet" {
    filename = var.filename
    content = "my favourite pet is ${random_pet.my-pet.id}"
    #content = "my favourite pet is random_pet.my-pet.id" #alternative way without ${}
  
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    
  
}