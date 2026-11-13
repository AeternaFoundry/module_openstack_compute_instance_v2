output "compute_instance_v2s_id" {
  description = "Map of id values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.id }
}
output "compute_instance_v2s_access_ip_v4" {
  description = "Map of access_ip_v4 values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.access_ip_v4 }
}
output "compute_instance_v2s_access_ip_v6" {
  description = "Map of access_ip_v6 values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.access_ip_v6 }
}
output "compute_instance_v2s_admin_pass" {
  description = "Map of admin_pass values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.admin_pass }
  sensitive   = true
}
output "compute_instance_v2s_all_metadata" {
  description = "Map of all_metadata values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.all_metadata }
}
output "compute_instance_v2s_all_tags" {
  description = "Map of all_tags values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.all_tags }
}
output "compute_instance_v2s_availability_zone" {
  description = "Map of availability_zone values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.availability_zone }
}
output "compute_instance_v2s_availability_zone_hints" {
  description = "Map of availability_zone_hints values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.availability_zone_hints }
}
output "compute_instance_v2s_block_device" {
  description = "Map of block_device values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.block_device }
}
output "compute_instance_v2s_config_drive" {
  description = "Map of config_drive values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.config_drive }
}
output "compute_instance_v2s_created" {
  description = "Map of created values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.created }
}
output "compute_instance_v2s_flavor_id" {
  description = "Map of flavor_id values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.flavor_id }
}
output "compute_instance_v2s_flavor_name" {
  description = "Map of flavor_name values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.flavor_name }
}
output "compute_instance_v2s_force_delete" {
  description = "Map of force_delete values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.force_delete }
}
output "compute_instance_v2s_hypervisor_hostname" {
  description = "Map of hypervisor_hostname values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.hypervisor_hostname }
}
output "compute_instance_v2s_image_id" {
  description = "Map of image_id values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.image_id }
}
output "compute_instance_v2s_image_name" {
  description = "Map of image_name values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.image_name }
}
output "compute_instance_v2s_key_pair" {
  description = "Map of key_pair values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.key_pair }
}
output "compute_instance_v2s_metadata" {
  description = "Map of metadata values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.metadata }
}
output "compute_instance_v2s_name" {
  description = "Map of name values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.name }
}
output "compute_instance_v2s_network" {
  description = "Map of network values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.network }
}
output "compute_instance_v2s_network_mode" {
  description = "Map of network_mode values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.network_mode }
}
output "compute_instance_v2s_personality" {
  description = "Map of personality values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.personality }
}
output "compute_instance_v2s_power_state" {
  description = "Map of power_state values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.power_state }
}
output "compute_instance_v2s_region" {
  description = "Map of region values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.region }
}
output "compute_instance_v2s_scheduler_hints" {
  description = "Map of scheduler_hints values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.scheduler_hints }
}
output "compute_instance_v2s_security_groups" {
  description = "Map of security_groups values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.security_groups }
}
output "compute_instance_v2s_stop_before_destroy" {
  description = "Map of stop_before_destroy values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.stop_before_destroy }
}
output "compute_instance_v2s_tags" {
  description = "Map of tags values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.tags }
}
output "compute_instance_v2s_updated" {
  description = "Map of updated values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.updated }
}
output "compute_instance_v2s_user_data" {
  description = "Map of user_data values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => v.user_data }
}
output "compute_instance_v2s_vendor_options" {
  description = "Map of vendor_options values across all compute_instance_v2s, keyed the same as var.compute_instance_v2s"
  value       = { for k, v in openstack_compute_instance_v2.compute_instance_v2s : k => one(v.vendor_options) }
}

