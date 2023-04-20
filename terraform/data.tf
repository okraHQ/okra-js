data "aws_acm_certificate" "issued" {
  domain   = lookup(var.route53_zone_id, local.workspace)
  statuses = ["ISSUED"]
}