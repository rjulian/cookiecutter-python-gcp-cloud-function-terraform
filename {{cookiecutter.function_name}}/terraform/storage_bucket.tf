resource "google_storage_bucket" "bucket" {
  name                        = "{{cookiecutter.function_name}}-gcf-source" 
  location                    = "US"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "object" {
  name   = "{{cookiecutter.function_name}}.zip"
  bucket = google_storage_bucket.bucket.name
  source = "../deploy/{{cookiecutter.function_name}}.zip" 
}