resource "local_file" "address" {
    for_each = var.services
    content = each.value.address
    filename = "resources/services_${each.value.id}.txt"
}

resource "local_file" "intentions" {
    for_each = var.intentions #loop through intentions
    content = each.value.action 
    filename = "resources/intentions.txt" #hard to find unique name
}
