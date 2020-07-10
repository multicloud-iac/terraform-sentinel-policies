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

policy "prevent-remote-exec-provisioners-on-null-resources" {
    source = "./prevent-remote-exec-provisioners-on-null-resources.sentinel"
    enforcement_level = "advisory"
}

policy "require-private-acl-and-kms-for-s3-buckets" {
  source = "./require-private-acl-and-kms-for-s3-buckets.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ami-owners" {
  source = "./restrict-ami-owners.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-assumed-roles-by-workspace" {
  source = "./restrict-assumed-roles-by-workspace.sentinel"
  enforcement_level = "advisory"
}


policy "restrict-azure-publishers" {
    source = "./restrict-azure-publishers.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-ingress-sg-rule-cidr-blocks" {
  source = "./restrict-ingress-sg-rule-cidr-blocks.sentinel"
  enforcement_level = "advisory"
}
