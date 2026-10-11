output "ssm_patch_baselines_lookup_baseline_identities" {
  description = "Map of baseline_identities values across all ssm_patch_baselines_lookup, keyed the same as var.ssm_patch_baselines_lookup"
  value       = { for k, v in data.aws_ssm_patch_baselines.ssm_patch_baselines_lookup : k => v.baseline_identities if v.baseline_identities != null && length(v.baseline_identities) > 0 }
}
output "ssm_patch_baselines_lookup_default_baselines" {
  description = "Map of default_baselines values across all ssm_patch_baselines_lookup, keyed the same as var.ssm_patch_baselines_lookup"
  value       = { for k, v in data.aws_ssm_patch_baselines.ssm_patch_baselines_lookup : k => v.default_baselines if v.default_baselines != null }
}
output "ssm_patch_baselines_lookup_filter" {
  description = "Map of filter values across all ssm_patch_baselines_lookup, keyed the same as var.ssm_patch_baselines_lookup"
  value       = { for k, v in data.aws_ssm_patch_baselines.ssm_patch_baselines_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ssm_patch_baselines_lookup_region" {
  description = "Map of region values across all ssm_patch_baselines_lookup, keyed the same as var.ssm_patch_baselines_lookup"
  value       = { for k, v in data.aws_ssm_patch_baselines.ssm_patch_baselines_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

