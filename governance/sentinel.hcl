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

policy "allowed-datasources" {
    source = "./allowed-datasources.sentinel"
    enforcement_level = "advisory"
}

policy "allowed-providers" {
    source = "./allowed-providers.sentinel"
    enforcement_level = "advisory"
}

policy "allowed-provisioners" {
    source = "./allowed-provisioners.sentinel"
    enforcement_level = "advisory"
}

policy "allowed-resources" {
    source = "./allowed-resources.sentinel"
    enforcement_level = "advisory"
}

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

policy "require-all-resources-from-pmr" {
    source = "./require-all-resources-from-pmr.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-availability-zones" {
  source = "./restrict-availability-zones.sentinel"
  enforcement_level = "advisory"
}
