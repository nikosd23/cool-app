# Elasticsearch One
resource "google_compute_instance" "sample-coolapp-1" {
  name = "cool-app"
  machine_type = "f1-micro"
  tags = [
    "http-server",
    "https-server",
    "dev-http",
    "dev-https",
    "dev-nodejs",
    "dev-ssh"]

  zone = "us-west1-a"

  disk {
    image = "debian-8-jessie-v20160923"
    size = 20
  }

  network_interface {
    subnetwork = "default"
    access_config {
    }
  }

  service_account {
    scopes = [
      "userinfo-email",
      "compute-ro",
      "storage-ro"]
  }
}