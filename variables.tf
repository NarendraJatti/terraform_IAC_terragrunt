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

variable "name" {
     type = string
     default = "Mark"
  
}
variable "number" {
     type = bool
     default = true
  
}
variable "distance" {
     type = number
     default = 5
  
}
variable "jedi" {
     type = map
     default = {
     filename = "/root/first-jedi"
     content = "phanius"
     }
  
}

variable "gender" {
     type = list(string)
     default = ["Male", "Female"]
}
variable "hard_drive" {
     type = map
     default = {
          slow = "HHD"
          fast = "SSD"
     }
}
variable "users" {
     type = set(string)
     default = ["tom", "jerry", "pluto", "daffy", "donald", "jerry", "chip", "dale"] #wrong duplicates not allowed in sets

  
}

  




