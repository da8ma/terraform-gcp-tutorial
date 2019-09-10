provider "google" {
  credentials = "${file("account.json")}"
  project = "terraform-test-lab"
  region  = "us-west1"
  zone    = "us-west1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    # default network
    network       = "${google_compute_network.vpc_network.self_link}"
    # Ephemeral IP
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}
