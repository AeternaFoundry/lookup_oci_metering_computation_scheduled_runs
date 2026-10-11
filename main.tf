data "oci_metering_computation_scheduled_runs" "metering_computation_scheduled_runs_lookup" {
  for_each = var.metering_computation_scheduled_runs_lookup

  schedule_id = each.value.schedule_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

