Global Variables - Defines ServiceNow & Minion API credentials
variable "servicenow_instance" {
  description = "ServiceNow instance URL"
  type        = string
}

variable "servicenow_username" {
  description = "ServiceNow API username"
  type        = string
  sensitive   = true
}

variable "servicenow_password" {
  description = "ServiceNow API password"
  type        = string
  sensitive   = true
}

variable "minion_api_url" {
  description = "Minion API endpoint"
  type        = string
}

variable "minion_api_token" {
  description = "API token for Minion authentication"
  type        = string
  sensitive   = true
}

variable "assignment_group" {
  description = "Assignment group for CR"
  type        = string
  default     = "ITSM Team"
}
