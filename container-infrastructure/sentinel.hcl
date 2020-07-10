# Sentinel Policies - Container Infrastructure

module "tfplan-functions" {
    source = "../functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../functions/tfconfig-functions.sentinel"
}

policy "restrict-app-service-to-https" {
  source = "./restrict-app-service-to-https.sentinel"
  enforcement_level = "hard-mandatory"
}
