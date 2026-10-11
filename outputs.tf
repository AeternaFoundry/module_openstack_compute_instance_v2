output "compute_instance_v2s_id" {
  description = "Map of id values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_instance_v2s_access_ip_v4" {
  description = "Map of access_ip_v4 values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no access_ip_v4 are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.access_ip_v4 if v.access_ip_v4 != null && length(v.access_ip_v4) > 0 }
}
output "compute_instance_v2s_access_ip_v6" {
  description = "Map of access_ip_v6 values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no access_ip_v6 are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.access_ip_v6 if v.access_ip_v6 != null && length(v.access_ip_v6) > 0 }
}
output "compute_instance_v2s_admin_pass" {
  description = "Map of admin_pass values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no admin_pass are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.admin_pass if v.admin_pass != null && length(v.admin_pass) > 0 }
  sensitive   = true
}
output "compute_instance_v2s_all_metadata" {
  description = "Map of all_metadata values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no all_metadata are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.all_metadata if v.all_metadata != null && length(v.all_metadata) > 0 }
}
output "compute_instance_v2s_all_tags" {
  description = "Map of all_tags values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no all_tags are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.all_tags if v.all_tags != null && length(v.all_tags) > 0 }
}
output "compute_instance_v2s_availability_zone" {
  description = "Map of availability_zone values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no availability_zone are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "compute_instance_v2s_availability_zone_hints" {
  description = "Map of availability_zone_hints values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no availability_zone_hints are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.availability_zone_hints if v.availability_zone_hints != null && length(v.availability_zone_hints) > 0 }
}
output "compute_instance_v2s_block_device" {
  description = "Map of block_device values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no block_device are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.block_device if v.block_device != null && length(v.block_device) > 0 }
}
output "compute_instance_v2s_config_drive" {
  description = "Map of config_drive values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no config_drive are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.config_drive if v.config_drive != null }
}
output "compute_instance_v2s_created" {
  description = "Map of created values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no created are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.created if v.created != null && length(v.created) > 0 }
}
output "compute_instance_v2s_flavor_id" {
  description = "Map of flavor_id values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no flavor_id are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.flavor_id if v.flavor_id != null && length(v.flavor_id) > 0 }
}
output "compute_instance_v2s_flavor_name" {
  description = "Map of flavor_name values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no flavor_name are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.flavor_name if v.flavor_name != null && length(v.flavor_name) > 0 }
}
output "compute_instance_v2s_force_delete" {
  description = "Map of force_delete values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no force_delete are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.force_delete if v.force_delete != null }
}
output "compute_instance_v2s_hypervisor_hostname" {
  description = "Map of hypervisor_hostname values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no hypervisor_hostname are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.hypervisor_hostname if v.hypervisor_hostname != null && length(v.hypervisor_hostname) > 0 }
}
output "compute_instance_v2s_image_id" {
  description = "Map of image_id values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no image_id are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.image_id if v.image_id != null && length(v.image_id) > 0 }
}
output "compute_instance_v2s_image_name" {
  description = "Map of image_name values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no image_name are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.image_name if v.image_name != null && length(v.image_name) > 0 }
}
output "compute_instance_v2s_key_pair" {
  description = "Map of key_pair values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no key_pair are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.key_pair if v.key_pair != null && length(v.key_pair) > 0 }
}
output "compute_instance_v2s_metadata" {
  description = "Map of metadata values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no metadata are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "compute_instance_v2s_name" {
  description = "Map of name values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no name are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_instance_v2s_network" {
  description = "Map of network values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no network are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.network if v.network != null && length(v.network) > 0 }
}
output "compute_instance_v2s_network_mode" {
  description = "Map of network_mode values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no network_mode are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.network_mode if v.network_mode != null && length(v.network_mode) > 0 }
}
output "compute_instance_v2s_personality" {
  description = "Map of personality values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no personality are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.personality if v.personality != null && length(v.personality) > 0 }
}
output "compute_instance_v2s_power_state" {
  description = "Map of power_state values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no power_state are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.power_state if v.power_state != null && length(v.power_state) > 0 }
}
output "compute_instance_v2s_region" {
  description = "Map of region values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_instance_v2s_scheduler_hints" {
  description = "Map of scheduler_hints values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no scheduler_hints are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.scheduler_hints if v.scheduler_hints != null && length(v.scheduler_hints) > 0 }
}
output "compute_instance_v2s_security_groups" {
  description = "Map of security_groups values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no security_groups are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.security_groups if v.security_groups != null && length(v.security_groups) > 0 }
}
output "compute_instance_v2s_stop_before_destroy" {
  description = "Map of stop_before_destroy values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no stop_before_destroy are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.stop_before_destroy if v.stop_before_destroy != null }
}
output "compute_instance_v2s_tags" {
  description = "Map of tags values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no tags are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "compute_instance_v2s_updated" {
  description = "Map of updated values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no updated are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.updated if v.updated != null && length(v.updated) > 0 }
}
output "compute_instance_v2s_user_data" {
  description = "Map of user_data values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no user_data are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.user_data if v.user_data != null && length(v.user_data) > 0 }
}
output "compute_instance_v2s_vendor_options" {
  description = "Map of vendor_options values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s except keys with no vendor_options are omitted"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => one(v.vendor_options) if v.vendor_options != null && length(v.vendor_options) > 0 }
}

