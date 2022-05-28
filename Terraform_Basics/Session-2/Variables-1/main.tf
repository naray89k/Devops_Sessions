locals {
  # list formation
  adults = [
    for userid, details in var.members : userid
    if details.is_adult
  ]
  children = [
    for userid, details in var.members : userid
    if !details.is_adult
  ]

  # map formation
  adults_map = {
    for userid, details in var.members : userid => details.full_name
    if details.is_adult
  }
  children_map = {
    for userid, details in var.members : userid => details.full_name
    if !details.is_adult
  }

  # map formation with subelments.
  adults_details = {
    for userid, details in var.members : userid => details
    if details.is_adult
  }

  children_details = {
    for userid, details in var.members : userid => details
    if !details.is_adult
  }

  # map formation with subelments.
  machine_category_names = [
    for category,category_value in var.machine_types : category
  ]

  instance_type_names = flatten([
    for category_name, category_tiers in var.machine_types : [
      for tier_name, tier_details in category_tiers : tier_details.instance_type
    ]
  ])

  instance_type_groups = flatten([
    for category_name, category_tiers in var.machine_types : [
      for tier_name, tier_details in category_tiers : {
        "${tier_details.instance_type}" = {
          vcpu   = tier_details.vcpu
          memory = tier_details.memory
        }
      }
    ]
  ])

  default_access_logs = {
    "properties" = {
      "article" = {
        "type" = "keywords"
      }
    }
  }

  default_access_logs_2 = {
    "properties" = {
      "article" = var.type
    }
  }
}

