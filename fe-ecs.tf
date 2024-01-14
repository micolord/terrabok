resource "alicloud_instance" "fe_ecs_instance_1" {
  instance_name        = "${var.env_name}-${var.project}-gl-fe"
  image_id             = "ubuntu_20_04_x64_20G_alibase_20231221.vhd"
  instance_type        = "ecs.g7.large"
  security_groups      = [alicloud_security_group.fe-sg.id]
  vswitch_id           = module.vpc.vswitch_ids[2]
  password             = "dynamic_random_password"
  system_disk_category = "cloud_essd"
  system_disk_size     = 100
  tags = {
    Name = "${var.env_name}-${var.project}-gl-fe"
  }

}

resource "alicloud_instance" "fe_ecs_instance_2" {
  instance_name        = "${var.env_name}-${var.project}-gl-be"
  image_id             = "ubuntu_20_04_x64_20G_alibase_20231221.vhd"
  instance_type        = "ecs.g7.large"
  security_groups      = [alicloud_security_group.fe-sg.id]
  vswitch_id           = module.vpc.vswitch_ids[2]
  password             = "dynamic_random_password"
  system_disk_category = "cloud_essd"
  system_disk_size     = 100
  tags = {
    Name = "${var.env_name}-${var.project}-gl-be"
  }

}