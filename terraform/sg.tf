module "vote_service_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "vote-ec2-sg"
  description = "Security group for ec2"
  vpc_id      = module.vpc.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "ssh access from everywhere"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 31820
      to_port     = 31820
      protocol    = "tcp"
      description = "jenkins access from everywhere"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  egress_with_cidr_blocks = [
    {
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
      description = "Allow all outbound connections"
    }
  ]

}
