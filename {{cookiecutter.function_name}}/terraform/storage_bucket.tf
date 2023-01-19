resource "google_storage_bucket" "bucket" {
  name                        = "{{cookiecutter.gcp_function_bucket}}"
  location                    = "US"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "object" {
  name   = "{{cookiecutter.function_name}}.zip"
  bucket = google_storage_bucket.bucket.name
  source = "../build/{{cookiecutter.function_name}}.zip" 
}