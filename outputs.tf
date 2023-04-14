output "bucket_name" {
  value = google_storage_bucket.gcs_bucket.name
}

output "object_name" {
  value = google_storage_bucket_object.upload_hello_world.name
}
