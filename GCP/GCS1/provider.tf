terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.58.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "my-terraform-project-20230321"
  region = "us-central1"
  zone = "us-crentral1-a"
  credentials = "keys.json"
}
