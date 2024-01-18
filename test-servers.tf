resource "azurerm_resource_group" "redis" {
  name     = "redis-resources"
  location = "West Europe"
}

resource "alicloud_instance" "bo_ecs_instance_test_1" {
  instance_name        = "${var.env_name}-${var.project}-testing-fe"
  image_id             = "ubuntu_20_04_x64_20G_alibase_20231221.vhd"
  instance_type        = "ecs.g7.large"
  security_groups      = [alicloud_security_group.bo-sg.id]
  vswitch_id           = module.vpc.vswitch_ids[1]
  password             = "dynamic_random_password"
  system_disk_category = "cloud_essd"
  system_disk_size     = 100
  tags = {
    Name = "${var.env_name}-${var.project}-test-fe"
  }
}

resource "alicloud_instance" "bo_ecs_instance_test_2" {
  instance_name        = "${var.env_name}-${var.project}-testing-be"
  image_id             = "ubuntu_20_04_x64_20G_alibase_20231221.vhd"
  instance_type        = "ecs.g7.large"
  security_groups      = [alicloud_security_group.bo-sg.id]
  vswitch_id           = module.vpc.vswitch_ids[1]
  password             = "dynamic_random_password"
  system_disk_category = "cloud_essd"
  system_disk_size     = 100
  tags = {
    Name = "${var.env_name}-${var.project}-test-be"
  }
}


resource "azurerm_redis_cache" "redis_instance" {
  name                = "${var.env_name}-${var.project}-testing-cache"
  location            = "Manila"
  resource_group_name = "rg-acfnxlnykybjn7q"
  capacity            = 2
  family              = "C"
  sku_name            = "Standard"
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  redis_configuration {
  }
}