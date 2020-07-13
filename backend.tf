terraform {
  backend "remote" {
    organization = "hardselius"

    workspaces {
      name = "namecheap-config"
    }
  }
}
