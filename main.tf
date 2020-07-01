provider "digitalocean" {
}

module "server-droplet" {
  source = "./modules/server-droplet"
  ssh_fingerprint = "${var.ssh_fingerprint}"
  server_count = "${var.server_count}"
}
