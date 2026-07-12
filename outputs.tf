output "spring_cloud_active_deployments_id" {
  description = "Map of id values across all spring_cloud_active_deployments, keyed the same as var.spring_cloud_active_deployments"
  value       = { for k, v in azurerm_spring_cloud_active_deployment.spring_cloud_active_deployments : k => v.id }
}
output "spring_cloud_active_deployments_deployment_name" {
  description = "Map of deployment_name values across all spring_cloud_active_deployments, keyed the same as var.spring_cloud_active_deployments"
  value       = { for k, v in azurerm_spring_cloud_active_deployment.spring_cloud_active_deployments : k => v.deployment_name }
}
output "spring_cloud_active_deployments_spring_cloud_app_id" {
  description = "Map of spring_cloud_app_id values across all spring_cloud_active_deployments, keyed the same as var.spring_cloud_active_deployments"
  value       = { for k, v in azurerm_spring_cloud_active_deployment.spring_cloud_active_deployments : k => v.spring_cloud_app_id }
}

