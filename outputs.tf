output "vertex_ai_cache_configs_id" {
  description = "Map of id values across all vertex_ai_cache_configs, keyed the same as var.vertex_ai_cache_configs except keys with no id are omitted"
  value       = { for k, v in google_vertex_ai_cache_config.vertex_ai_cache_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vertex_ai_cache_configs_disable_cache" {
  description = "Map of disable_cache values across all vertex_ai_cache_configs, keyed the same as var.vertex_ai_cache_configs except keys with no disable_cache are omitted"
  value       = { for k, v in google_vertex_ai_cache_config.vertex_ai_cache_configs : k => v.disable_cache if v.disable_cache != null }
}
output "vertex_ai_cache_configs_name" {
  description = "Map of name values across all vertex_ai_cache_configs, keyed the same as var.vertex_ai_cache_configs except keys with no name are omitted"
  value       = { for k, v in google_vertex_ai_cache_config.vertex_ai_cache_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vertex_ai_cache_configs_project" {
  description = "Map of project values across all vertex_ai_cache_configs, keyed the same as var.vertex_ai_cache_configs except keys with no project are omitted"
  value       = { for k, v in google_vertex_ai_cache_config.vertex_ai_cache_configs : k => v.project if v.project != null && length(v.project) > 0 }
}

