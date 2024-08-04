terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.39.2"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.38.0"
    }
  }
}

provider "cloudflare" {
  #Env var: export CLOUDFLARE_API_KEY
  #Env var: export CLOUDFLARE_EMAIL
}

provider "digitalocean" {
  # Env var: export DIGITALOCEAN_TOKEN 
}

