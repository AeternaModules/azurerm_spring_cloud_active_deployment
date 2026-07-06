output "spring_cloud_active_deployments" {
  description = "All spring_cloud_active_deployment resources"
  value       = azurerm_spring_cloud_active_deployment.spring_cloud_active_deployments
}
output "spring_cloud_active_deployments_deployment_name" {
  description = "List of deployment_name values across all spring_cloud_active_deployments"
  value       = [for k, v in azurerm_spring_cloud_active_deployment.spring_cloud_active_deployments : v.deployment_name]
}
output "spring_cloud_active_deployments_spring_cloud_app_id" {
  description = "List of spring_cloud_app_id values across all spring_cloud_active_deployments"
  value       = [for k, v in azurerm_spring_cloud_active_deployment.spring_cloud_active_deployments : v.spring_cloud_app_id]
}

