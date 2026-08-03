variable vpc_cidr {
  type        = string
  description = "VPC cidr range"
  default     = "10.0.0.0/16"
}

variable subnet_cidr {
   type        = string
  description = "subnet cidr"
  default     = "10.0.1.0/24"
} 

variable subnet_az {
   type        = string
  description = "subnet az"
} 

variable env {
  type = string
  description = "what env it is"
}