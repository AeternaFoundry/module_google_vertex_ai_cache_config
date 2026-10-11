resource "google_vertex_ai_cache_config" "vertex_ai_cache_configs" {
  for_each = var.vertex_ai_cache_configs

  disable_cache = each.value.disable_cache
  project       = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

