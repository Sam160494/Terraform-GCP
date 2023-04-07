
resource "google_storage_bucket" "GCS10" {
  name          = "samra-gcs-bucket"
  location      = "US"
  force_destroy = true
}