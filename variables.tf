variable "compute_instance_v2s" {
  description = <<EOT
Map of compute_instance_v2s, attributes below
Required:
    - name
Optional:
    - admin_pass
    - availability_zone
    - availability_zone_hints
    - config_drive
    - flavor_id
    - flavor_name
    - force_delete
    - hypervisor_hostname
    - image_id
    - image_name
    - key_pair
    - metadata
    - network_mode
    - power_state
    - region
    - security_groups
    - stop_before_destroy
    - tags
    - user_data
    - block_device (block):
        - boot_index (optional)
        - delete_on_termination (optional)
        - destination_type (optional)
        - device_type (optional)
        - disk_bus (optional)
        - guest_format (optional)
        - multiattach (optional)
        - source_type (required)
        - uuid (optional)
        - volume_size (optional)
        - volume_type (optional)
    - network (block):
        - access_network (optional)
        - fixed_ip_v4 (optional)
        - fixed_ip_v6 (optional)
        - name (optional)
        - port (optional)
        - uuid (optional)
    - personality (block):
        - content (required)
        - file (required)
    - scheduler_hints (block):
        - additional_properties (optional)
        - build_near_host_ip (optional)
        - different_cell (optional)
        - different_host (optional)
        - group (optional)
        - query (optional)
        - same_host (optional)
        - target_cell (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vendor_options (block):
        - detach_ports_before_destroy (optional)
        - ignore_resize_confirmation (optional)
EOT

  type = map(object({
    name                    = string
    admin_pass              = optional(string)
    availability_zone       = optional(string)
    availability_zone_hints = optional(string)
    config_drive            = optional(bool)
    flavor_id               = optional(string)
    flavor_name             = optional(string)
    force_delete            = optional(bool)
    hypervisor_hostname     = optional(string)
    image_id                = optional(string)
    image_name              = optional(string)
    key_pair                = optional(string)
    metadata                = optional(map(string))
    network_mode            = optional(string)
    power_state             = optional(string)
    region                  = optional(string)
    security_groups         = optional(set(string))
    stop_before_destroy     = optional(bool)
    tags                    = optional(set(string))
    user_data               = optional(string)
    block_device = optional(list(object({
      boot_index            = optional(number)
      delete_on_termination = optional(bool)
      destination_type      = optional(string)
      device_type           = optional(string)
      disk_bus              = optional(string)
      guest_format          = optional(string)
      multiattach           = optional(bool)
      source_type           = string
      uuid                  = optional(string)
      volume_size           = optional(number)
      volume_type           = optional(string)
    })))
    network = optional(list(object({
      access_network = optional(bool)
      fixed_ip_v4    = optional(string)
      fixed_ip_v6    = optional(string)
      name           = optional(string)
      port           = optional(string)
      uuid           = optional(string)
    })))
    personality = optional(list(object({
      content = string
      file    = string
    })))
    scheduler_hints = optional(list(object({
      additional_properties = optional(map(string))
      build_near_host_ip    = optional(string)
      different_cell        = optional(list(string))
      different_host        = optional(list(string))
      group                 = optional(string)
      query                 = optional(list(string))
      same_host             = optional(list(string))
      target_cell           = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vendor_options = optional(object({
      detach_ports_before_destroy = optional(bool)
      ignore_resize_confirmation  = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_instance_v2s : (
        v.network_mode == null || (contains([for v in ["auto", "none"] : lower(v)], lower(v.network_mode)))
      )
    ])
    error_message = "must be one of: \"auto\", \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.compute_instance_v2s : (
        v.power_state == null || (contains([for v in ["active", "shutoff", "shelved_offloaded", "paused"] : lower(v)], lower(v.power_state)))
      )
    ])
    error_message = "must be one of: \"active\", \"shutoff\", \"shelved_offloaded\", \"paused\""
  }
}

