resource "google_compute_network" "vpc-terraform" {
  name = var.vpc-name
  auto_create_subnetworks = var.autocreate-subnet
}

resource "google_compute_subnetwork" "nw-us-central" {
  name          = var.subnet1-name
  ip_cidr_range = var.ip_subnet1
  region        = var.subnet1_region
  network       = google_compute_network.vpc-terraform.id
}
resource "google_compute_subnetwork" "nw-asia-east" {
  name          = var.subnet2-name
  ip_cidr_range = var.ip_subnet2
  region        = var.subnet2_region
  network       = google_compute_network.vpc-terraform.id
}
resource "google_compute_firewall" "fw-rule"{
  name    = var.fw-rule-name
  network = google_compute_network.vpc-terraform.id

  allow {
    protocol = var.fw-icmp
  }

  allow {
    protocol = var.protocol
    ports    = var.ports
  }
  source_ranges = var.source-ranges
  source_tags   = ["web"]
  
}