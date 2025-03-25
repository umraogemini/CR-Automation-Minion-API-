# Module Variables - Defines input variables for Minion API CR module
variable "short_description" {
  description = "Short description for the CR"
  type        = string
}

variable "description" {
  description = "Detailed description for the CR"
  type        = string
}

variable "risk" {
  description = "Risk level of the CR"
  type        = string
  default     = "low"
}

variable "impact" {
  description = "Impact level of the CR"
  type        = string
  default     = "low"
}

variable "assignment_group" {
  description = "The assignment group for the CR"
  type        = string
}
