variable "name" {
    type = string
    description = "nome da instancia"
    default = "cap-5"
   
}
variable "type" {
    type = string
    description = "tipo de maquina"
    default = "f1-micro"
   
}

variable "zone" {
    type = string
    description = "zona da instancia"
    default = "us-central1-a"
   
}

variable "image"{
  type = string
  description = "imagem usada pela instancia"
  default = "debian-cloud/debian-9"

}

variable "vpc-name"{
  type = string
  description = "VPC utilizada pela instancia"
  default = "vpc-terraform"

}

variable "autocreate-subnet"{
  type = bool
  description = "VPC vai criar a subrede automaticamente ou não"
  default = false

}

variable "subnet-name"{
  type = string
  description = "Nome da Sub-rede"
  default = "nw-us-central"

}

variable "ip_subnet"{
    type = string
    description = "sub-rede da vpc"
    default = "192.168.10.0/24"
}

variable "subnet_region"{
    type = string
    description = "Região da sub-rede"
    default = "us-central1"
}