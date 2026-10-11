variable "metering_computation_scheduled_runs_lookup" {
  description = <<EOT
Map of metering_computation_scheduled_runs_lookup, attributes below
Required:
    - schedule_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    schedule_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

