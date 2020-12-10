resource "google_compute_instance" "instance-us" {
  depends_on   = [google_compute_network.vpc-terraform]
  name         = var.instance-name1
  machine_type = var.machine-type1
  zone         = var.zone1

  boot_disk {
    initialize_params {
      image = var.image1
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.nw-us-central.name
    access_config {

    }
  }
  metadata = {
    ssh-keys = var.pub-ssh-key
  }
}

resource "google_compute_instance" "instance-asia" {
  depends_on   = [google_compute_network.vpc-terraform]
  name         = var.instance-name2
  machine_type = var.machine-type2
  zone         = var.zone2

  boot_disk {
    initialize_params {
      image = var.image2
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.nw-asia-east.name
    access_config {
     //ephemeral IP
    }
  }
  metadata = {
     ssh-keys = var.pub-ssh-key
  }
  metadata_startup_script = var.script-inicial

}
###################### Máquina 2
resource "google_compute_instance" "asia-web" {
  depends_on = [google_compute_network.vpc-terraform]
  name = var.instance-name2
  machine_type = var.type2 
  zone = var.zone2

  boot_disk {
   initialize_params {
      image = var.image2
   }
 }

 network_interface {
    subnetwork = google_compute_subnetwork.nw-asia-east.name
       access_config {

    }
  }
 metadata = {
   ssh-keys = var.pub-ssh-key
 }

}