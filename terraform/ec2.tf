module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name       = "vote-instance"
  spot_price = "0.60"
  spot_type  = "persistent"

  ami                    = "ami-09e67e426f25ce0d7"
  instance_type          = "t3.large"
  key_name               = "votekey"
  monitoring             = false
  vpc_security_group_ids = [module.vote_service_sg.security_group_id]
  subnet_id              = element(module.vpc.public_subnets, 0)
  root_block_device = [
    {
      encrypted   = true
      volume_type = "gp3"
      throughput  = 200
      volume_size = 30
    },
  ]
}
