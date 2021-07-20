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

# Eplicit Define Allowed Items

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

# Force use of PMR Modules for everything

policy "require-all-resources-from-pmr" {
    source = "./require-all-resources-from-pmr.sentinel"
    enforcement_level = "advisory"
}
