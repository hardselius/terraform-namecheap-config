# -----------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the operator.
# -----------------------------------------------------------------------------

variable "nc_username" {
  description = "Namecheap username"
  type        = string
}

variable "nc_api_user" {
  description = "Namecheap API user"
  type        = string
}

variable "nc_ip_address" {
  description = "The IP address from wich the Namecheap API is called"
  type        = string
}

variable "nc_token" {
  description = "Namecheap API token"
  type        = string
}

# -----------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# -----------------------------------------------------------------------------

variable "nc_use_sandbox" {
  description = "Whether or not to target the Namecheap sandbox environment"
  type        = bool
  default     = false
}

variable "nc_domain" {
  description = "The Namecheap domain to configure"
  type        = string
  default     = "hardselius.dev"
}
