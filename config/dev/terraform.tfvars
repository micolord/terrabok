region  = "ap-southeast-6"
project = "bokbok"
env_name = "dev"

// network details
vpc_cidr = "10.22.0.0/16"
pub_a = "10.22.0.0/24"
priv_a = "10.22.2.0/24"
priv_b = "10.22.3.0/24"
priv_c = "10.22.4.0/24"
#private_subnet_cidr_4 = "10.5.5.0/24"
#private_subnet_cidr_5 = "10.5.6.0/24"
#private_subnet_cidr_6 = "10.5.7.0/24"
#private_subnet_cidr_7 = "10.5.8.0/24"
#private_subnet_cidr_8 = "10.5.9.0/24"
az_a = "ap-southeast-6a"


// Back Office
#bo_fe_ami_id = "aliyun_3_x64_20G_qboot_alibase_20230727.vhd"
#bo_fe_instance_type = "ecs.t6-c4m1.large"

// db instance details
#master_instance_class = "db.t3.small"