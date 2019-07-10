# Sentinel Policies - Governance

policy "governance-block-resources-from-root" {
  enforcement_level = "soft-mandatory"
}

policy "governance-prevent-remote-exec-provisioners-on-null-resources" {
  enforcement_level = "soft-mandatory"
}

policy "governance-require-modules-from-pmr" {
  enforcement_level = "soft-mandatory"
}
