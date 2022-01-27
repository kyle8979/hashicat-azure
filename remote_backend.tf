terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "chip-cert"
    workspaces {
      name = "hashicat-azure"
    }
  }
}
