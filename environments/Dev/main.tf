module vpc {
  source = "../../modules/vpc"
    vpc_cidr = "11.0.0.0/16"
    subnet_cidr =  "11.0.1.0/24"
    subnet_az =  "ap-south-1"
    env = "Dev"
}

module ec2 {
    source = "../../modules/ec2"
    ami_id = "ami-00d2dbb426772b03a"
    ins_type = "t3.micro"
    subn_id = module.vpc.subnet_id
    ec2_count = 3
    environment = "Dev"
}