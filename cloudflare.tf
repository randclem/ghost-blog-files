data "cloudflare_zone" "example" {
  name = "example.com"
}

resource "cloudflare_record" "blog" {
  zone_id = data.cloudflare_zone.example.id
  name    = "blog"
  value   = digitalocean_droplet.ghost_blog.ipv4_address
  type    = "A"
  proxied = true

  depends_on = [digitalocean_droplet.ghost_blog]
}