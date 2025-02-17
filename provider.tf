terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    } 
  }
}

provider "google" {
  project     = "united-sandbox-445705-j4"
  region      = "us-central1"
  zone        = "us-central1-a"
}
