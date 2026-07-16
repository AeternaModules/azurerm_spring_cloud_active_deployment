output "spring_cloud_active_deployments_id" {
  description = "Map of id values across all spring_cloud_active_deployments, keyed the same as var.spring_cloud_active_deployments"
  value       = { for k, v in azurerm_spring_cloud_active_deployment.spring_cloud_active_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spring_cloud_active_deployments_deployment_name" {
  description = "Map of deployment_name values across all spring_cloud_active_deployments, keyed the same as var.spring_cloud_active_deployments"
  value       = { for k, v in azurerm_spring_cloud_active_deployment.spring_cloud_active_deployments : k => v.deployment_name if v.deployment_name != null && length(v.deployment_name) > 0 }
}
output "spring_cloud_active_deployments_spring_cloud_app_id" {
  description = "Map of spring_cloud_app_id values across all spring_cloud_active_deployments, keyed the same as var.spring_cloud_active_deployments"
  value       = { for k, v in azurerm_spring_cloud_active_deployment.spring_cloud_active_deployments : k => v.spring_cloud_app_id if v.spring_cloud_app_id != null && length(v.spring_cloud_app_id) > 0 }
}

