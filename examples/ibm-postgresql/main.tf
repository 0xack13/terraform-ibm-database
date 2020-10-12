###########################################################
# IBM Cloud `databases-for-postgresql` database provisioning
# Copyright 2020 IBM
###########################################################

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}
module "ibm-postgresql" {
  source                               = "../../modules/ibm-postgresql"
  resource_group_id                    = data.ibm_resource_group.resource_group.id
  name                                 = var.name
  plan                                 = var.plan
  location                             = var.location
  adminpassword                        = (var.adminpassword != null ? var.adminpassword : null)
  database_version                     = (var.database_version != null ? var.database_version : null)
  members_memory_allocation_mb         = (var.members_memory_allocation_mb != null ? var.members_memory_allocation_mb : null)
  members_disk_allocation_mb           = (var.members_disk_allocation_mb != null ? var.members_disk_allocation_mb : null)
  members_cpu_allocation_count         = (var.members_cpu_allocation_count != null ? var.members_cpu_allocation_count : null)
  service_endpoints                    = (var.service_endpoints != null ? var.service_endpoints : "public")
  backup_id                            = (var.backup_id != null ? var.backup_id : null)
  remote_leader_id                     = (var.remote_leader_id != null ? var.remote_leader_id : null)
  key_protect_instance                 = (var.key_protect_instance != null ? var.key_protect_instance : null)
  key_protect_key                      = (var.key_protect_key != null ? var.key_protect_key : null)
  backup_encryption_key_crn            = (var.backup_encryption_key_crn != null ? var.backup_encryption_key_crn : null)
  tags                                 = (var.tags != null ? var.tags : [])
  point_in_time_recovery_deployment_id = (var.point_in_time_recovery_deployment_id != null ? var.point_in_time_recovery_deployment_id : null)
  point_in_time_recovery_time          = (var.point_in_time_recovery_time != null ? var.point_in_time_recovery_time : null)
  users                                = (var.users != null ? var.users : [])
  whitelist                            = (var.whitelist != null ? var.whitelist : [])
  cpu_rate_increase_percent            = (var.cpu_rate_increase_percent != null ? var.cpu_rate_increase_percent : null)
  cpu_rate_limit_count_per_member      = (var.cpu_rate_limit_count_per_member != null ? var.cpu_rate_limit_count_per_member : null)
  cpu_rate_period_seconds              = (var.cpu_rate_period_seconds != null ? var.cpu_rate_period_seconds : null)
  cpu_rate_units                       = (var.cpu_rate_units != null ? var.cpu_rate_units : null)
  disk_capacity_enabled                = (var.disk_capacity_enabled != null ? var.disk_capacity_enabled : null)
  disk_free_space_less_than_percent    = (var.disk_free_space_less_than_percent != null ? var.disk_free_space_less_than_percent : null)
  disk_io_above_percent                = (var.disk_io_above_percent != null ? var.disk_io_above_percent : null)
  disk_io_enabled                      = (var.disk_io_enabled != null ? var.disk_io_enabled : null)
  disk_io_over_period                  = (var.disk_io_over_period != null ? var.disk_io_over_period : null)
  disk_rate_increase_percent           = (var.disk_rate_increase_percent != null ? var.disk_rate_increase_percent : null)
  disk_rate_limit_mb_per_member        = (var.disk_rate_limit_mb_per_member != null ? var.disk_rate_limit_mb_per_member : null)
  disk_rate_period_seconds             = (var.disk_rate_period_seconds != null ? var.disk_rate_period_seconds : null)
  disk_rate_units                      = (var.disk_rate_units != null ? var.disk_rate_units : null)
  memory_io_above_percent              = (var.memory_io_above_percent != null ? var.memory_io_above_percent : null)
  memory_io_enabled                    = (var.memory_io_enabled != null ? var.memory_io_enabled : null)
  memory_io_over_period                = (var.memory_io_over_period != null ? var.memory_io_over_period : null)
  memory_rate_increase_percent         = (var.memory_rate_increase_percent != null ? var.memory_rate_increase_percent : null)
  memory_rate_limit_mb_per_member      = (var.memory_rate_limit_mb_per_member != null ? var.memory_rate_limit_mb_per_member : null)
  memory_rate_period_seconds           = (var.memory_rate_period_seconds != null ? var.memory_rate_period_seconds : null)
  memory_rate_units                    = (var.memory_rate_units != null ? var.memory_rate_units : null)
}
