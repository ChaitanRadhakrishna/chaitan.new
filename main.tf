resource "local_file" "my_pet" {
    filename = "wild.txt"
    content = "Lion is a wild animal I named him as ${random_pet.petname.id}"

}
    
    output "my_pet" {
        value = random_pet.petname.id
    }

resource "random_pet" "petname" {
    prefix = "MR"
    separator = "."
    length = "1"

  
}