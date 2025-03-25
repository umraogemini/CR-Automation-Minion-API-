# Root Module to Call Minion API Module - Calls the Minion API CR Module
module "create_cr" {
  source            = "./modules/minion_cr"
  short_description = "Automated CR via Minion API"
  description       = "Created for deployment automation"
  risk             = "low"
  impact           = "low"
  assignment_group = var.assignment_group
}
