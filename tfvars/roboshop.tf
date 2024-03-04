resource "aws_instance" "servers" {
  for_each = var.instance_name
  ami           = var.ami_id
  instance_type = each.value
  tags = {
    Name = each.key
  }
}

# output "instances_info" {
#   value = aws_instance.servers
# }


resource "aws_route53_record" "route53" {
  for_each = aws_instance.servers
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [ startswith(each.key, "web") ? each.value.public_ip : each.value.private_ip]
}