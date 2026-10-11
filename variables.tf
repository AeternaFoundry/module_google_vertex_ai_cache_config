variable "vertex_ai_cache_configs" {
  description = <<EOT
Map of vertex_ai_cache_configs, attributes below
Required:
    - disable_cache
Optional:
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    disable_cache = bool
    project       = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

