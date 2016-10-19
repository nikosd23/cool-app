provider "google" {
  credentials = "${file("~/Downloads/account.json")}"
  project = "cool-app"
  region = "us-west1"
}