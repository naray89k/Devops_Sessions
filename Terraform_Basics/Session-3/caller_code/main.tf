#module "random_1" {
#    source = "../random_pass"
#    length = var.password_length
#    special = var.allow_special_character
#}
#
#module "random_2" {
#    source = "../random_pass"
#    length = var.password_length
#    special = var.allow_special_character
#}
#
#module "random_3" {
#    source = "../random_pass"
#    length = var.password_length
#    special = var.allow_special_character
#}

module "elasticsearch_opensearch_role-1" {
    source = "../module_code"
    role_name = "logs_writer"
    cluster_permissions = ["*"]
    index_patterns = []
    index_allowed_actions = ["write"]
    tenant_patterns = 
    tenant_allowed_actions = 
}

module "elasticsearch_opensearch_role-2" {
    source = "../module_code"
    role_name = "logs_writer"
    cluster_permissions = ""
    index_patterns = 
    index_allowed_actions = 
    tenant_patterns = 
    tenant_allowed_actions = 
    
}

module "elasticsearch_opensearch_role-3" {
    source = "../module_code"
    role_name = "logs_writer"
    cluster_permissions = ""
    index_patterns = 
    index_allowed_actions = 
    tenant_patterns = 
    tenant_allowed_actions = 
}

module "elasticsearch_opensearch_role-4" {
    source = "../module_code"
    role_name = "logs_writer"
    cluster_permissions = ""
    index_patterns = 
    index_allowed_actions = 
    tenant_patterns = 
    tenant_allowed_actions = 
}

resource "gitlab_project_variable" "example" {
  project   = "12345"
  key       = "project_variable_key"
  value     = "project_variable_value"
  protected = false

}

