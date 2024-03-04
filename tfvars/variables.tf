variable "zone_id" {
  default = "Z08780431GOB4T1TR5RPR"
}

variable "domain_name" {
  default = "pjdevops.online"
}

variable "instance_name" {
  type = map
    default = {
        # mongodb   = "t3.micro"
        # mysql     = "t3.micro"
        # web       =  "t3.micro"
    }
  }

variable "ami_id" {
  type = string
  default = "ami-0f3c7d07486cad139"

}
