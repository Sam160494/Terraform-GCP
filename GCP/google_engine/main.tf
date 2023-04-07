resource "google_compute_instance" "vm-tf" {
  name         = "vm-tf"
  zone         = "us-central1-a"
  machine_type = "n1-standard-2"
  allow_stopping_for_update = true
  #boot_disk    = "us-central1-a"


  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "tflabel"
      }
    }
  }
}


  