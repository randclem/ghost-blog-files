# DigitalOcean Ghost Blog with Terraform files

Read the blog post at https://hexandtea.com/digitalocean-ghost-blog-with-terraform

## pre-requisites
1. Replace the name parameter in the data block for cloudflare_zone in cloudflare.tf to your own domain/zone in Cloudflare.  
2. This setup requires an SSH Key pre-configured in your DigitalOcean.  Name the digitalocean_ssh_key resource name appropriately for your SSH key.  
3. Make sure you have the appropriate API keys for Cloudflare and DigitalOcean.  The list of environment variables to set is in the provider configs.  

