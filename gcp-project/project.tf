resource "google_project" "project" {
  name            = var.project_name
  project_id      = var.project_id
  folder_id       = var.folder_id
  billing_account = var.billing_account

  labels = merge(var.labels, {
    billing   = lower(var.billing_account)
    tf_module = "gcp-project",
  })

  skip_delete = var.skip_delete ? true : false
}
output "project" {
  value = google_project.project
}

resource "google_project_service" "services" {
  for_each = toset(var.services)
  project  = google_project.project.project_id
  service  = each.key

  disable_dependent_services = false
  disable_on_destroy         = true
}
output "services" {
  value = google_project_service.services
}
