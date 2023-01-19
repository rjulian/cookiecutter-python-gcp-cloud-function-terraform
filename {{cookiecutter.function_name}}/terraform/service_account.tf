resource "google_service_account" "sa" {
  account_id   = "{{cookiecutter.function_name}}-service-account"
  display_name = "A service account for a cloud function that allows access to a bucket"
}

