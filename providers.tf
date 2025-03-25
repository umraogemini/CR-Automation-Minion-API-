## Minion API & ServiceNow Provider Configuration - ✅ Configures ServiceNow provider ✅ Enables HTTP provider for Minion API integration
terraform {
  required_providers {
    servicenow = {
      source  = "servicenow/servicenow"
      version = "~> 0.3.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 2.1.0"
    }
  }
}

provider "servicenow" {
  instance  = var.servicenow_instance
  username  = var.servicenow_username
  password  = var.servicenow_password
}
