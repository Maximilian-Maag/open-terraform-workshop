terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "~> 2.0"
    }
  }
}

provider "linode" {
  token = var.linode_token
}

resource "linode_instance" "hello" {
  label       = "hello-world"
  region      = "eu-central"   # Frankfurt (closest to Vienna)
  type        = "g6-nanode-1"  # cheapest plan
  image       = "linode/ubuntu22.04"
  root_pass   = var.root_pass

  # simple startup script
  metadata {
    user_data = base64encode(<<-EOF
      #!/bin/bash
      apt-get update -y
      apt-get install -y nginx
      echo "Hello, world from Linode!" > /var/www/html/index.html
      systemctl enable nginx
      systemctl start nginx
    EOF
    )
  }
}