locals {
  workspace = trimprefix("${var.TFC_WORKSPACE_NAME}", "okra-${var.service}-")
  team      = "core-product"
  tags = {
    Team        = local.team
    Environment = local.workspace
    Service     = var.service
    Terraform   = true
  }
}
