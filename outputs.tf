output "governance_controls_id" {
  description = "Map of id values across all governance_controls, keyed the same as var.governance_controls except keys with no id are omitted"
  value       = { for k, v in datadog_governance_control.governance_controls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "governance_controls_detection_parameters" {
  description = "Map of detection_parameters values across all governance_controls, keyed the same as var.governance_controls except keys with no detection_parameters are omitted"
  value       = { for k, v in datadog_governance_control.governance_controls : k => v.detection_parameters if v.detection_parameters != null && length(v.detection_parameters) > 0 }
}
output "governance_controls_detection_type" {
  description = "Map of detection_type values across all governance_controls, keyed the same as var.governance_controls except keys with no detection_type are omitted"
  value       = { for k, v in datadog_governance_control.governance_controls : k => v.detection_type if v.detection_type != null && length(v.detection_type) > 0 }
}
output "governance_controls_mitigation_parameters" {
  description = "Map of mitigation_parameters values across all governance_controls, keyed the same as var.governance_controls except keys with no mitigation_parameters are omitted"
  value       = { for k, v in datadog_governance_control.governance_controls : k => v.mitigation_parameters if v.mitigation_parameters != null && length(v.mitigation_parameters) > 0 }
}
output "governance_controls_mitigation_type" {
  description = "Map of mitigation_type values across all governance_controls, keyed the same as var.governance_controls except keys with no mitigation_type are omitted"
  value       = { for k, v in datadog_governance_control.governance_controls : k => v.mitigation_type if v.mitigation_type != null && length(v.mitigation_type) > 0 }
}
output "governance_controls_name" {
  description = "Map of name values across all governance_controls, keyed the same as var.governance_controls except keys with no name are omitted"
  value       = { for k, v in datadog_governance_control.governance_controls : k => v.name if v.name != null && length(v.name) > 0 }
}
output "governance_controls_notification_settings" {
  description = "Map of notification_settings values across all governance_controls, keyed the same as var.governance_controls except keys with no notification_settings are omitted"
  value       = { for k, v in datadog_governance_control.governance_controls : k => v.notification_settings if v.notification_settings != null && length(v.notification_settings) > 0 }
}

