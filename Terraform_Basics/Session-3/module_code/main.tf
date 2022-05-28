#resource "random_password" "password" {
#  length           = var.length
#  special          = var.special
#}
#
#resource "random_string" "user" {
#  length           = var.length
#  special          = var.special
#}

resource "elasticsearch_opensearch_role" "name" {
  role_name = var.role_name
  description = "The ${var.role_name} role"
  
  cluster_permissions = [var.cluster_permissions]

  index_permissions {
    index_patterns = [var.index_patterns]
    allowed_actions = var.index_allowed_actions
  }

  tenant_permissions {
    tenant_patterns = [var.tenant_patterns]
    allowed_actions = var.tenant_allowed_actions
  }
}
