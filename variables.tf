variable "spring_cloud_active_deployments" {
  description = <<EOT
Map of spring_cloud_active_deployments, attributes below
Required:
    - deployment_name
    - spring_cloud_app_id
EOT

  type = map(object({
    deployment_name     = string
    spring_cloud_app_id = string
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

