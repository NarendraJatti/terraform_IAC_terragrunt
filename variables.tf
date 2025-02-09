variable "filename" {
    default = "/root/pets.txt"  #optional without default value>>prompt in shell ask for value explickyt
    type = string #optional
    description = "this a variable value" #optional
  
}




resource "local_file" "pet" {
    filename = var.filename
  
}

variable "prefix" {
    default = ['Mr','Mrs','Sir']
    type = list
}

variable "bella"{
    type = object({
      name = string
      age = number
      hobbies = list(string)
    })
}

variable kitty {
    type = tuple([ string,number,bool ])
    default = [ "value", 0, false ]
}
resource "random_pet" "my-pet" {
    prefix = var.prefix[0]
}