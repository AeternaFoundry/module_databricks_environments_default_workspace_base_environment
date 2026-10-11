variable "environments_default_workspace_base_environments" {
  description = <<EOT
Map of environments_default_workspace_base_environments, attributes below
Optional:
    - cpu_workspace_base_environment
    - gpu_workspace_base_environment
    - provider_config
EOT

  type = map(object({
    cpu_workspace_base_environment = optional(string)
    gpu_workspace_base_environment = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

