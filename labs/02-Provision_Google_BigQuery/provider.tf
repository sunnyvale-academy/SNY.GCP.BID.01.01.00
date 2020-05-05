// Configure the Google Cloud provider
provider "google" {
 credentials = "${file("sny-goo-bid-01-01-00-fcd4b66b0892.json")}"
 project     = "sny-goo-bid-01-01-00"
 region      = "eu-west1-a"
}

// Terraform plugin for creating random ids
resource "random_id" "instance_id" {
 byte_length = 8
}