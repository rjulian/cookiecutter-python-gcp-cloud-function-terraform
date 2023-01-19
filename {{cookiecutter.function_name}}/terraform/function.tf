resource "google_cloudfunctions_function" "function" {
  name                  = "{{cookiecutter.function_name}}"
  description           = "{{cookiecutter.function_description}}"
  runtime               = "python39"
  entry_point           = "hello_world"
  source_archive_bucket = google_storage_bucket.bucket.name
  source_archive_object = google_storage_bucket_object.object.name

  timeout               = 60
  service_account_email = google_service_account.sa.email
  available_memory_mb   = 256

  trigger_http = true
}