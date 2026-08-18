variable vpc_cidr {
  type = string
  default = "10.0.0.0/16"
  description = "vpc cidr range"
}

variable subnet_cidr {
    type = string
    default = "10.0.1.0/24"
    description = "subnet cidr"
}

variable subnet_az {
  type = string
  description = "subnet azone"
}

variable env {
  type = string
  description = "what env is it"
}