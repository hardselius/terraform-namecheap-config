provider "namecheap" {
  version = "~> 1.5.0"

  username = var.nc_username
  api_user = var.nc_api_user
  token    = var.nc_token
  ip       = var.nc_ip_address
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

resource "namecheap_record" "www-example-com" {
  name    = "www"
  domain  = var.nc_domain
  address = "127.0.0.1"
  mx_pref = 10
  type    = "A"
}
