resource "openstack_compute_instance_v2" "compute_instance_v2s" {
  for_each = var.compute_instance_v2s

  name                    = each.value.name
  admin_pass              = each.value.admin_pass
  availability_zone       = each.value.availability_zone
  availability_zone_hints = each.value.availability_zone_hints
  config_drive            = each.value.config_drive
  flavor_id               = each.value.flavor_id
  flavor_name             = each.value.flavor_name
  force_delete            = each.value.force_delete
  hypervisor_hostname     = each.value.hypervisor_hostname
  image_id                = each.value.image_id
  image_name              = each.value.image_name
  key_pair                = each.value.key_pair
  metadata                = each.value.metadata
  network_mode            = each.value.network_mode
  power_state             = each.value.power_state
  region                  = each.value.region
  security_groups         = each.value.security_groups
  stop_before_destroy     = each.value.stop_before_destroy
  tags                    = each.value.tags
  user_data               = each.value.user_data

  dynamic "block_device" {
    for_each = each.value.block_device != null ? each.value.block_device : []
    content {
      boot_index            = block_device.value.boot_index
      delete_on_termination = block_device.value.delete_on_termination
      destination_type      = block_device.value.destination_type
      device_type           = block_device.value.device_type
      disk_bus              = block_device.value.disk_bus
      guest_format          = block_device.value.guest_format
      multiattach           = block_device.value.multiattach
      source_type           = block_device.value.source_type
      uuid                  = block_device.value.uuid
      volume_size           = block_device.value.volume_size
      volume_type           = block_device.value.volume_type
    }
  }

  dynamic "network" {
    for_each = each.value.network != null ? each.value.network : []
    content {
      access_network = network.value.access_network
      fixed_ip_v4    = network.value.fixed_ip_v4
      fixed_ip_v6    = network.value.fixed_ip_v6
      name           = network.value.name
      port           = network.value.port
      uuid           = network.value.uuid
    }
  }

  dynamic "personality" {
    for_each = each.value.personality != null ? each.value.personality : []
    content {
      content = personality.value.content
      file    = personality.value.file
    }
  }

  dynamic "scheduler_hints" {
    for_each = each.value.scheduler_hints != null ? each.value.scheduler_hints : []
    content {
      additional_properties = scheduler_hints.value.additional_properties
      build_near_host_ip    = scheduler_hints.value.build_near_host_ip
      different_cell        = scheduler_hints.value.different_cell
      different_host        = scheduler_hints.value.different_host
      group                 = scheduler_hints.value.group
      query                 = scheduler_hints.value.query
      same_host             = scheduler_hints.value.same_host
      target_cell           = scheduler_hints.value.target_cell
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vendor_options" {
    for_each = each.value.vendor_options != null ? [each.value.vendor_options] : []
    content {
      detach_ports_before_destroy = vendor_options.value.detach_ports_before_destroy
      ignore_resize_confirmation  = vendor_options.value.ignore_resize_confirmation
    }
  }
}

