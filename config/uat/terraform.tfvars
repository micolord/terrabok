region  = "ap-southeast-6"
project = "bokbok"
env_name = "uat"

// network details
vpc_cidr = "10.21.0.0/16"
pub_a = "10.21.0.0/24"
priv_a = "10.21.2.0/24"
priv_b = "10.21.3.0/24"
priv_c = "10.21.4.0/24"
#private_subnet_cidr_4 = "10.5.5.0/24"
#private_subnet_cidr_5 = "10.5.6.0/24"
#private_subnet_cidr_6 = "10.5.7.0/24"
#private_subnet_cidr_7 = "10.5.8.0/24"
#private_subnet_cidr_8 = "10.5.9.0/24"
az_a = "ap-southeast-6a"

// domains
gl_fe_domain = "bokbokgp-uat.vip"
gl_be_domain = "gl-be.bokbokgp-uat.vip"
bo_fe_domain = "bo-fe.bokbokgp-uat.vip"
bo_be_domain = "bo-be.bokbokgp-uat.vip"
jobproc_domain = "jobproc.bokbokgp-uat.vip"
#socket_domain  = "socket.bokbokgp-uat.vip"
cert_id = "69291-ap-southeast-1"

// Back Office
#bo_fe_ami_id = "aliyun_3_x64_20G_qboot_alibase_20230727.vhd"
#bo_fe_instance_type = "ecs.t6-c4m1.large"

// db instance details
#master_instance_class = "db.t3.small"