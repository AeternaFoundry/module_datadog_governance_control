resource "datadog_governance_control" "governance_controls" {
  for_each = var.governance_controls

  detection_type        = each.value.detection_type
  detection_parameters  = each.value.detection_parameters
  mitigation_parameters = each.value.mitigation_parameters
  mitigation_type       = each.value.mitigation_type
  notification_settings = each.value.notification_settings
}

