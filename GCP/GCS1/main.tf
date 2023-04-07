resource "google_storage_bucket" "new_bucket" {
  name = "tf_bucket_from_terr"
  storage_class = "NEARLINE"
  location = "US-CENTRAL1"

  labels = {
    "env" = "tf-dep"
     "dep" = "complience"
  }
 
 uniform_bucket_level_access = true

}