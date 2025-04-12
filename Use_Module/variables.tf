
variable "default_region" {
  type        = string
  description = "the region this infrastructure is in"
  default     = "us-west-2"
}

variable "instance_size" {
  type        = string
  description = "ec2 web server size"
  default     = "t2.micro"
}

variable "infra_env" {
  type = map(string)
  default = {
    staging    = "infra-staging"
    prod = "infra-production"
  }
}