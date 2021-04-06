

resource "aws_instance" "myec2" {
    count = var.instancecount
    ami =  var.amiid
    instance_type = "t2.micro"
    tags = {
        "Name" = "Tabu-${var.tags[count.index]}"
       #    "name" = var.tags[count.index]
          }
}

output "myec2ipaddress" {
  value = aws_instance.myec2[*].public_ip
}
output "myec2privateip" {
  value = aws_instance.myec2[*].private_ip
}