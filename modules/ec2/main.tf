resource "aws_instance" "foo" {
    ami = var.ami_id
    instance_type = var.ins_type
    subnet_id = var.sub_id
    count = var.ec2_count

    tags = {
        Name = "${var.env}-EC2-${count.index}"
        Env = var.env
    }
}