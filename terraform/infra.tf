terraform {
  backend "gcs" {
    bucket = "tf-state-gcp-batch-ingestion"
    region = "us-central1-a"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "grey-sort-challenge"
  region = "us-central1-a"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "batch-pipeline"
  storage_class = "REGIONAL"
  location  = "us-central1-a"
}
