variable "governance_controls" {
  description = <<EOT
Map of governance_controls, attributes below
Required:
    - detection_type
Optional:
    - detection_parameters
    - mitigation_parameters
    - mitigation_type
    - notification_settings
EOT

  type = map(object({
    detection_type        = string
    detection_parameters  = optional(string)
    mitigation_parameters = optional(string)
    mitigation_type       = optional(string)
    notification_settings = optional(list(object({
      enabled    = bool
      event_type = string
      targets = list(object({
        handle = string
        type   = string
      }))
    })))
  }))
}

