output "vpc_id" {
  value       = google_compute_network.vpc-terraform.id
  description = "id da vpc"
}

output "vpc_mtu" {
  value       = google_compute_network.vpc-terraform.mtu
  description = "id da vpc"
}

output "vpc_gateway" {
  value       = google_compute_network.vpc-terraform.gateway_ipv4
  description = "gateway da vpc"
}