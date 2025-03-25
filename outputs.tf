# Global Outputs - Outputs CR ID for logging & automation
output "cr_id" {
  description = "Change Request ID"
  value       = module.create_cr.cr_id
}
