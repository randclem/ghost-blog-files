#SSH pub key data
data "digitalocean_ssh_key" "my_ssh_key" {
  name = "My SSH Key"
}

# droplet resource
resource "digitalocean_droplet" "ghost_blog" {
  image    = "ghost-20-04"
  name     = "ghost-blog"
  region   = "nyc3"
  size     = "s-1vcpu-1gb"
  backups  = true
  ssh_keys = [data.digitalocean_ssh_key.my_ssh_key.id]
}

output "droplet_public_ip" {
  value = digitalocean_droplet.ghost_blog.ipv4_address
}