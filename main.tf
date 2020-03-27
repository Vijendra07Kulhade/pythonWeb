// Configure the Google Cloud provider
provider "google" {
 credentials = file("flask-app-5f11330fb51b.json")
 project     = "flask-app-272403"
 region      = "us-west1"
}

// Terraform plugin for creating random ids
resource "random_id" "instance_id" {
 byte_length = 8
}

// A single Google Cloud Engine instance
resource "google_compute_instance" "default" {
 name         = "flask-vm-${random_id.instance_id.hex}"
 machine_type = "f1-micro"
 zone         = "us-west1-a"

 boot_disk {
   initialize_params {
     image = "centos-cloud/centos-7"
   }
 }

// Make sure flask is installed on all new instances for later steps
 metadata_startup_script = "sudo yum update; sudo yum install -yq build-essential python-pip rsync; pip install flask"

 network_interface {
   network = "default"

   access_config {
     // Include this section to give the VM an external ip address
   }
 }

  metadata = {
   ssh-keys = "app:${file("~/.ssh/id_rsa.pub")}"
 }


}

resource "google_compute_firewall" "default" {
 name    = "flask-app-firewall"
 network = "default"

 allow {
   protocol = "tcp"
   ports    = ["5000"]
 }
}

output "ip" {
 value = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
}