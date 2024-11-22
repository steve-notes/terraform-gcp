terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    } 
  }
}

provider "google" {
  project     = "static-forest-437203-m9"
  region      = "us-central1"
  zone        = "us-central1-a"
}
