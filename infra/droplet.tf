
# Criação do droplet
resource "digitalocean_droplet" "jenkins" {
  name   = var.droplet_name
  image  = var.droplet_image
  region = var.droplet_region
  size   = var.droplet_size

  connection {
    type        = "ssh"
    user        = "root"
    private_key = file("~/.ssh/id_rsa")
  }
  depends_on = [
    digitalocean_ssh_key.ssh_key,
  ]
}

# Criação da chave SSH

resource "digitalocean_ssh_key" "ssh_key" {
  name       = "lab-ssh"
  public_key = file("~/.ssh/id_rsa.pub")
}