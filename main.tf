provider "namecheap" {
  version = "~> 1.5.0"
}

# resource "namecheap_record" "www-example-com" {
#   name    = "www"
#   domain  = "hardselius.dev"
#   address = "127.0.0.1"
#   mx_pref = 10
#   type    = "A"
# }

# resource "namecheap_record" "fastmail_cname" {
#   count   = 3
#   domain  = "hardselius.dev"
#   type    = "CNAME"
#   name    = format("fm%d._domainkey", count.index + 1)
#   address = format("fm%d.hardselius.dev.dkim.fmhosted.com", count.index + 1)
# }

resource "null_resource" "terraform-github-actions" {
  triggers = {
    value = "This resource was created using GitHub Actions!"
  }
}
