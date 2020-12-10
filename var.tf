###### variáveis da instancia 1
variable "instance-name1" {
    type = string
    description = "nome da instancia"
    default = "instance-us"
   
}
variable "type1" {
    type = string
    description = "tipo de maquina"
    default = "f1-micro"
   
}

variable "zone1" {
    type = string
    description = "zona da instancia"
    default = "us-central1-a"
   
}

variable "image1" {
  type = string
  description = "imagem usada pela instancia"
  default = "debian-cloud/debian-9"

}
###### variáveis da instancia 2
variable "instance-name2" {
    type = string
    description = "nome da instancia"
    default = "instance-asia"
   
}
variable "type2" {
    type = string
    description = "tipo de maquina"
    default = "f1-micro"
   
}

variable "zone2" {
    type = string
    description = "zona da instancia"
    default = "asia-east1-a"
   
}

variable "image2" {
  type = string
  description = "imagem usada pela instancia"
  default = "debian-cloud/debian-9"

}

#################### VPC Network
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
############# Sub-rede1
variable "subnet1-name"{
  type = string
  description = "Nome da Sub-rede"
  default = "nw-us-central"

}

variable "ip_subnet1"{
    type = string
    description = "sub-rede da vpc"
    default = "192.168.10.0/24"
}

variable "subnet1_region"{
    type = string
    description = "Região da sub-rede"
    default = "us-central1"
}
############# Sub-rede2
variable "subnet2-name"{
  type = string
  description = "Nome da Sub-rede"
  default = "nw-asia-east"

}

variable "ip_subnet2"{
    type = string
    description = "sub-rede da vpc"
    default = "192.168.20.0/24"
}

variable "subnet2_region"{
    type = string
    description = "Região da sub-rede"
    default = "asia-east1"
}


################### Firewall

variable "fw-rule-name"{
  type        = string
  description = "Nome da regra"
  default     = "fw-web"
}

variable "fw-icmp"{
  type        = string
  description = "Liberar ping"
  default     = "icmp"
}

variable "protocol"{
  type        = string
  description = "protocolo"
  default     = "tcp"
}

variable "ports"{
  type        = list
  description = "portas"
  default     = ["22","80","443"]
}

variable "source-ranges"{
  type        = list
  description = "Origem, lista"
  default     = ["0.0.0.0/0"]
}

variable "source-tags"{
  type        = list
  description = "Tags"
  default     = ["web"]
}

variable "pub-ssh-key"{
  type        = string
  description = "chave publica"
  default     = "fribeiro:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9uYBWftQDm8HssI28rsx1lLvmBCbfF/MOVDoULTAlpvEc+jqVQ0/E/Ti1MZinZKxOz43zxA6MF/CNY7qZkDHQUp4/PE8P5USMPGcPAGA+MhN7UE1cZ7Ylbq2L2t+Zdkw43oBWCDanP+G2PzT3UomTseWE9JRvVboJ435kmnRgC3fOPUn5A3tPwj/5jpAXmb/4CvfFuIFc2HqzpfNIA4PcPa48HZfzGoQDu1pZEYyHw5LLX8JfKo79UzY/N75KBYarQ9g4OTai08JE7idxBcsn9aE29RM+EoHTdbbMo6He19ZRRnrNZQXbwO3InbHEs/BaOHwynvpXQsEm4M8gp6rT fribeiro@debian"
}