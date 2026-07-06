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
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_active_deployment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] !ok
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] err != nil
  # path: deployment_name
  #   source:    [from validate.SpringCloudDeploymentName] !ok
  # path: deployment_name
  #   source:    [from validate.SpringCloudDeploymentName] !regexp.MustCompile(`^([a-z])([a-z\d-]{2,30})([a-z\d])$`).MatchString(v)
}

