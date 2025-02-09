#implicit dependency below example
resource "local_file" "pet" {
    filename = var.filename
    content = "my favourite pet is ${random_pet.my-pet.id}" #interpolation syntax
    #content = "my favourite pet is random_pet.my-pet.id" #alternative way without ${}
  
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    }


#explict dependency
depends_on '=[
    random_pet.my-pet
]

When to Use Explicit Dependencies:
Use explicit dependencies when there is no direct attribute reference between resources, but one resource must be created or modified before another.
For example, if you have a situation where the dependencies aren’t directly expressed (like a CloudWatch log group needing to be created before an EC2 instance can write logs), you can use depends_on.