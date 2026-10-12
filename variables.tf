variable "generic_endpoints" {
  description = <<EOT
Map of generic_endpoints, attributes below
Required:
    - data_json
    - path
Optional:
    - disable_delete
    - disable_read
    - ignore_absent_fields
    - namespace
    - write_fields
EOT

  type = map(object({
    data_json            = string
    path                 = string
    disable_delete       = optional(bool)
    disable_read         = optional(bool)
    ignore_absent_fields = optional(bool)
    namespace            = optional(string)
    write_fields         = optional(list(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

