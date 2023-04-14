terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.61.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone
}


resource "google_storage_bucket" "gcs_bucket" {
  name     = var.gcs_bucket
  location = var.region
}

resource "google_storage_bucket_object" "upload_hello_world" {
  name   = "upload_hello_world.md"
  source = data.local_file.hello_world.filename
  bucket = var.gcs_bucket
  depends_on = [
    google_storage_bucket.gcs_bucket
  ]
}

data "local_file" "hello_world" {
  filename = "${path.module}/res/hello_world.md"
}
