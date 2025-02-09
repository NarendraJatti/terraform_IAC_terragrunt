output "instance_id" {
  value = aws_instance.example.id
}


output "pet-name" {
    value = random_pet.my-pet.id
    description = "value"
  
}

terraform output