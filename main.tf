provider "google" {
  credentials = "${file("${var.credentials}")}"
  project = "${var.project}"
  region = "${var.region}"
  zone = "${var.zone}"
}
resource "google_compute_instance" "vm_instance1" {
 name = "${var.instance-name-1}"
 machine_type = "${var.machine-type-1}"
 boot_disk {
   initialize_params {
     image = "${var.image-1}"
   }
 }
  network_interface {
    network = "default"
    access_config {
    }
  }
} 
resource "google_compute_instance" "vm_instance2" {
 name = "${var.instance-name-2}"
 machine_type = "${var.machine-type-2}"
 boot_disk {
   initialize_params {
     image = "${var.image-2}"
   }
 }
  network_interface {
    network = "default"
    access_config {
    }
  }
}