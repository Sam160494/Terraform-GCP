resource "google_spanner_instance" "spanner-tf" {
  config       = "regional-asia-southeast1"
  display_name = "spanner-tf"
  num_nodes    = 1
  labels = {
    "env" = "learningtf"
  }
}

resource "google_spanner_database" "db1" {
  instance = google_spanner_instance.spanner-tf.name
  name     = "db1"

}