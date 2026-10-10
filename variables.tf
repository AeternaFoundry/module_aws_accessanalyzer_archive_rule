variable "accessanalyzer_archive_rules" {
  description = <<EOT
Map of accessanalyzer_archive_rules, attributes below
Required:
    - analyzer_name
    - rule_name
    - filter (block):
        - contains (optional)
        - criteria (required)
        - eq (optional)
        - exists (optional)
        - neq (optional)
Optional:
    - region
EOT

  type = map(object({
    analyzer_name = string
    rule_name     = string
    region        = optional(string)
    filter = list(object({
      contains = optional(list(string))
      criteria = string
      eq       = optional(list(string))
      exists   = optional(string)
      neq      = optional(list(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.accessanalyzer_archive_rules : (
        length(v.filter) >= 1
      )
    ])
    error_message = "Each filter list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

