variable "REGION" {
  type        = string
  description = "AWS Region"
  default = "eu-west-2"
}

variable "SUBNET_ID" {
  type        = string
  description = "Subnet ID where EC2 Instance should be created"
}

variable "PATH_TO_PRIVATE_KEY" {
  type        = string
  description = "Path of the private key"
  default     = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  type        = string
  description = "Path of the public key"
  default     = "mykey.pub"
}