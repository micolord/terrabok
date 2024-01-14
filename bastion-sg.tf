resource "alicloud_security_group" "bastion-sg" {
  name        = "${var.env_name}-${var.project}-bastion-sg"
  description = "${var.env_name}-${var.project} security group"
  security_group_type = "enterprise"
  vpc_id = module.vpc.vpc_id
}

resource "alicloud_security_group_rule" "bastion-ssh-ingress" {
  type              = "ingress"
  ip_protocol       = "tcp"
  port_range        = "22/22"
  security_group_id = alicloud_security_group.bastion-sg.id
  cidr_ip           = var.vpc_cidr
}

resource "alicloud_security_group_rule" "bastion-https-egress" {
  type              = "egress"
  ip_protocol       = "tcp"
  port_range        = "443/443"
  security_group_id = alicloud_security_group.bastion-sg.id
  cidr_ip           = var.vpc_cidr
}