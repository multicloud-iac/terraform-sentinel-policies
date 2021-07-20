module "tfplan-functions" {
    source = "../functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
    source = "../functions/tfrun-functions.sentinel"
}

module "aws-functions" {
  source = "../functions/aws-functions.sentinel"
}

# Enforce Tags and Labels
policy "enforce-aws-tags" {
  source = "./enforce-aws-tags.sentinel"
  enforcement_level = "advisory"
}

policy "enforce-azure-tags" {
  source = "./enforce-azure-tags.sentinel"
  enforcement_level = "advisory"
}

policy "enforce-gce-labels" {
    source = "./enforce-gce-labels.sentinel"
    enforcement_level = "advisory"
}

# Prohibit Specific Items

policy "prohibited-datasources" {
    source = "./prohibited-datasources.sentinel"
    enforcement_level = "advisory"
}

policy "prohibited-providers" {
    source = "./prohibited-providers.sentinel"
    enforcement_level = "advisory"
}

policy "prohibited-provisioners" {
    source = "./prohibited-provisioners.sentinel"
    enforcement_level = "advisory"
}

policy "prohibited-resources" {
    source = "./prohibited-resources.sentinel"
    enforcement_level = "advisory"
}

# Force Specific AZs
policy "restrict-availability-zones" {
  source = "./restrict-availability-zones.sentinel"
  enforcement_level = "advisory"
}
