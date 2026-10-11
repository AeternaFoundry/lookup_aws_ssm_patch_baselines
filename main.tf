data "aws_ssm_patch_baselines" "ssm_patch_baselines_lookup" {
  for_each = var.ssm_patch_baselines_lookup

  default_baselines = each.value.default_baselines
  region            = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      key    = filter.value.key
      values = filter.value.values
    }
  }
}

