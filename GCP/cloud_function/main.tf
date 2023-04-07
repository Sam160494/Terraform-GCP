 resource "google_storage_bucket" "bucket-func" {
     name  = "bucket-func"
     location      = "EU"
}
resource "google_storage_bucket_object" "sorcecode" {
  name   = "index.zip"
  bucket = google_storage_bucket.bucket-func.name
  source = "index.zip"
}

resource "google_cloudfunctions_function" "func-tf" {
  name        = "func-tf"
  description = "My function"
  runtime     = "nodejs16"

  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.bucket-func.name
  source_archive_object = google_storage_bucket_object.sorcecode.name

  trigger_http          = true
  entry_point           = "helloWorldtf"

}