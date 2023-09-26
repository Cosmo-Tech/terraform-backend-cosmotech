variable "terraform_container_name" {
  type    = string
  default = ""
}

variable "resource_group_name" {
  type    = string
  default = ""
}

variable "storage_account_name" {
  type        = string
  description = "The client id"
}

variable "container_name" {
  type        = string
  description = "The client secret"
}

variable "tenant_id" {
  description = "The tenant id"
  type        = string
}

variable "subscription_id" {
  description = "The subscription id"
  type        = string
}

variable "client_id" {
  type        = string
  description = "The client id"
}

variable "client_secret" {
  type        = string
  description = "The client secret"
}

variable "location" {
  type        = string
  description = "Region Azure"
}