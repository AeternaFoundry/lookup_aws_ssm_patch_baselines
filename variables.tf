variable "ssm_patch_baselines_lookup" {
  description = <<EOT
Map of ssm_patch_baselines_lookup, attributes below
Optional:
    - default_baselines
    - region
    - filter (block):
        - key (required)
        - values (required)
EOT

  type = map(object({
    default_baselines = optional(bool)
    region            = optional(string)
    filter = optional(list(object({
      key    = string
      values = set(string)
    })))
  }))
}

