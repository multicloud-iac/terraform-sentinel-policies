# Sentinel Policies

policy "enforce-mandatory-tags" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-azure-vm-size" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-ec2-instance-type-default" {
  enforcement_level = "soft-mandatory"
}

policy "restrict-gce-machine-type" {
  enforcement_level = "soft-mandatory"
}
