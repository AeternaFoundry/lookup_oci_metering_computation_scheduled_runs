output "metering_computation_scheduled_runs_lookup_id" {
  description = "Map of id values across all metering_computation_scheduled_runs_lookup, keyed the same as var.metering_computation_scheduled_runs_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_metering_computation_scheduled_runs.metering_computation_scheduled_runs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metering_computation_scheduled_runs_lookup_filter" {
  description = "Map of filter values across all metering_computation_scheduled_runs_lookup, keyed the same as var.metering_computation_scheduled_runs_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_metering_computation_scheduled_runs.metering_computation_scheduled_runs_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "metering_computation_scheduled_runs_lookup_schedule_id" {
  description = "Map of schedule_id values across all metering_computation_scheduled_runs_lookup, keyed the same as var.metering_computation_scheduled_runs_lookup except keys with no schedule_id are omitted"
  value       = { for k, v in data.oci_metering_computation_scheduled_runs.metering_computation_scheduled_runs_lookup : k => v.schedule_id if v.schedule_id != null && length(v.schedule_id) > 0 }
}
output "metering_computation_scheduled_runs_lookup_scheduled_run_collection" {
  description = "Map of scheduled_run_collection values across all metering_computation_scheduled_runs_lookup, keyed the same as var.metering_computation_scheduled_runs_lookup except keys with no scheduled_run_collection are omitted"
  value       = { for k, v in data.oci_metering_computation_scheduled_runs.metering_computation_scheduled_runs_lookup : k => v.scheduled_run_collection if v.scheduled_run_collection != null && length(v.scheduled_run_collection) > 0 }
}

