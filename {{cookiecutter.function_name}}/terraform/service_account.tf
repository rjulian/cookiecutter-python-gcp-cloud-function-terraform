resource "google_service_account" "sa" {
  account_id   = "{{cookiecutter.gcp_service_account_name}}"
  display_name = "A service account for a cloud function that allows access to a bucket"
}

