terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.5.0"
    }
  }
}

provider "google" {
  credentials = file("../service_account_key.json")

  project = var.gcp-project
  region  = "us-central1"
  zone    = "us-central1-c"
}
