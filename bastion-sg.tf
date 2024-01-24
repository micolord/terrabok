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
  cidr_ip           = "0.0.0.0/0"
}

resource "alicloud_security_group_rule" "bastion-https-egress" {
  type              = "egress"
  ip_protocol       = "tcp"
  port_range        = "443/443"
  security_group_id = alicloud_security_group.bastion-sg.id
  cidr_ip           = var.vpc_cidr
}

resource "alicloud_security_group_rule" "bastion-redis-egress" {
  type              = "egress"
  ip_protocol       = "tcp"
  port_range        = "6379/6379"
  security_group_id = alicloud_security_group.bastion-sg.id
  cidr_ip           = var.vpc_cidr
}

resource "alicloud_security_group_rule" "bastion-udp-dns-egress" {
  type              = "egress"
  ip_protocol       = "udp"
  port_range        = "53/53"
  security_group_id = alicloud_security_group.bastion-sg.id
  cidr_ip           = "0.0.0.0/0"
}

resource "alicloud_security_group_rule" "bastion-tcp-dns-egress" {
  type              = "egress"
  ip_protocol       = "tcp"
  port_range        = "53/53"
  security_group_id = alicloud_security_group.bastion-sg.id
  cidr_ip           = "0.0.0.0/0"
}