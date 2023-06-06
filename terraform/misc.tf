resource "aws_cloudwatch_log_group" "app_logs" {
  name              = "${var.product}-${var.service}-${local.workspace}"
  retention_in_days = var.cloudwatch_logs_retention

  tags = local.tags
}
