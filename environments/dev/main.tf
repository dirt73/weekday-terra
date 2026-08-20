module vpc {
  source = "../../modules/vpc"
  vpc_cidr = "11.0.0.0/16"
  subnet_cidr = "11.0.0.0/24"
  env = "dev"
}

module ec2 {
  source = "../../modules/ec2"
  ami_id = "ami-0ac7b260cf76d8865"
  ins_type = "t2.micro"
  sub_id = module.vpc.subnet_id
  ec2_count = 3
  env = "dev"
}