resource "databricks_environments_default_workspace_base_environment" "environments_default_workspace_base_environments" {
  for_each = var.environments_default_workspace_base_environments

  cpu_workspace_base_environment = each.value.cpu_workspace_base_environment
  gpu_workspace_base_environment = each.value.gpu_workspace_base_environment
  provider_config                = each.value.provider_config
}

