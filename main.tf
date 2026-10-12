resource "vault_generic_endpoint" "generic_endpoints" {
  for_each = var.generic_endpoints

  data_json            = each.value.data_json
  path                 = each.value.path
  disable_delete       = each.value.disable_delete
  disable_read         = each.value.disable_read
  ignore_absent_fields = each.value.ignore_absent_fields
  namespace            = each.value.namespace
  write_fields         = each.value.write_fields
}

