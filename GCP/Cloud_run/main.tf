resource "google_cloud_run_service" "run-app-tf" {
  name     = "run-app-tf"
  location = "us-central1"


 template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }
traffic {
    percent         = 100
    latest_revision = true
  }
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/run.invoker"
    members = [
      "user:samrakamal786@gmail.com",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "policy" {
  location = google_cloud_run_service.run-app-tf.location
  project = google_cloud_run_service.run-app-tf.project
  service = google_cloud_run_service.run-app-tf.name
  policy_data = data.google_iam_policy.admin.policy_data
}

