variable "billing_account" {
  description = "The alphanumeric ID of the billing account this project belongs to."
  type        = string
}
variable "folder_id" {
  description = "The numeric ID of the folder this project should be created under."
  type        = string
}
variable "labels" {
  description = "A set of key/value label pairs to assign to the project."
  type        = map(any)
  default     = {}
}
variable "project_id" {
  description = "The project ID."
  type        = string
}
variable "project_name" {
  description = "The display name of the project."
  type        = string
}
variable "services" {
  description = "List of services to enable."
  type        = list(string)
  default = [
    "bigquery.googleapis.com",
    "bigquerymigration.googleapis.com",
    "bigquerystorage.googleapis.com",
    "cloudapis.googleapis.com",
    "clouddebugger.googleapis.com",
    "cloudtrace.googleapis.com",
    "datastore.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "servicemanagement.googleapis.com",
    "serviceusage.googleapis.com",
    "sql-component.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "storage.googleapis.com",
  ]
}
variable "skip_delete" {
  description = "If true, the Terraform resource can be deleted without deleting the Project via the Google API."
  type        = bool
  default     = false
}
