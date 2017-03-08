resource "google_compute_instance" "jump" {
  name         = "jump"
  machine_type = "f1-micro"
  zone         = "us-east1-b"

  disk {
    image = "debian-cloud/debian-8"
  }
  network_interface {
    subnetwork = "${google_compute_subnetwork.east1-dokonb-public.name}"
    access_config {
    }
  }
}
resource "google_compute_instance" "vault" {
  name         = "vault"
  machine_type = "f1-micro"
  zone         = "us-east1-b"

  disk {
    image = "coreos-cloud/coreos-stable"
  }
  network_interface {
    subnetwork = "${google_compute_subnetwork.east1-dokonb-public.name}"
    access_config {
    }
  }
}
