terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    } 
  }
}

provider "google" {
  project     = "daring-night-475203-p1"
  region      = "us-central1"
  zone        = "us-central1-a"
}
