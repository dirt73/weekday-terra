variable ami_id {
  type = string
  description = "ami of my ec2"
}

variable ins_type {
  type = string
  description = "instance type of my ec2"
}

variable subn_id {
  type = string
  description = "ec2 subnet to  be created"
}

variable ec2_count {
  type = string
  description = "how many ec2"
}

variable environment {
  type = string
  description = "which env it belongs"
}