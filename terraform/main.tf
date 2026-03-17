terraform — terraform/main.tf
terraform {
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "~>3.0" }
    random  = { source = "hashicorp/random",  version = "~>3.6" }
  }
  required_version = ">=1.4"
}

provider "azurerm" {
  features {}
}

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  lower   = true
  numeric = true
  special = false
}

locals {
