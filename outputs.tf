output "accessanalyzer_archive_rules_id" {
  description = "Map of id values across all accessanalyzer_archive_rules, keyed the same as var.accessanalyzer_archive_rules"
  value       = { for k, v in aws_accessanalyzer_archive_rule.accessanalyzer_archive_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "accessanalyzer_archive_rules_analyzer_name" {
  description = "Map of analyzer_name values across all accessanalyzer_archive_rules, keyed the same as var.accessanalyzer_archive_rules"
  value       = { for k, v in aws_accessanalyzer_archive_rule.accessanalyzer_archive_rules : k => v.analyzer_name if v.analyzer_name != null && length(v.analyzer_name) > 0 }
}
output "accessanalyzer_archive_rules_filter" {
  description = "Map of filter values across all accessanalyzer_archive_rules, keyed the same as var.accessanalyzer_archive_rules"
  value       = { for k, v in aws_accessanalyzer_archive_rule.accessanalyzer_archive_rules : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "accessanalyzer_archive_rules_region" {
  description = "Map of region values across all accessanalyzer_archive_rules, keyed the same as var.accessanalyzer_archive_rules"
  value       = { for k, v in aws_accessanalyzer_archive_rule.accessanalyzer_archive_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "accessanalyzer_archive_rules_rule_name" {
  description = "Map of rule_name values across all accessanalyzer_archive_rules, keyed the same as var.accessanalyzer_archive_rules"
  value       = { for k, v in aws_accessanalyzer_archive_rule.accessanalyzer_archive_rules : k => v.rule_name if v.rule_name != null && length(v.rule_name) > 0 }
}

