variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.81.0.0/16"
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "vpc_intra_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.81.1.0/24", "10.81.2.0/24", "10.81.3.0/24"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["10.81.101.0/24", "10.81.102.0/24", "10.81.103.0/24"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = false
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    env = "dev"
  }
}