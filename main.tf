resource "google_iap_app_engine_version_iam_policy" "iap_app_engine_version_iam_policies" {
  for_each = var.iap_app_engine_version_iam_policies

  app_id      = each.value.app_id
  policy_data = each.value.policy_data
  service     = each.value.service
  version_id  = each.value.version_id
  project     = each.value.project
}

