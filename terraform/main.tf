module "ecr_repo" {
  source      = "app.terraform.io/Okra-Inc/modules/okra//aws/containers/ecr_repository"
  version     = "1.3.7"
  environment = local.workspace
  service     = var.service
  tags        = local.tags
}

module "app" {
  source                    = "app.terraform.io/Okra-Inc/modules/okra//aws/ecs_apps"
  version                   = "1.3.7"
  workspace                 = local.workspace
  service                   = var.service
  region                    = var.region
  min_capacity              = lookup(var.min_capacity, local.workspace)
  max_capacity              = lookup(var.max_capacity, local.workspace)
  service_domain            = lookup(var.hostname, local.workspace)
  health_check_route        = var.api_healthcheck
  environment_shortname     = lookup(var.environment_shortname, local.workspace)
  certificate_arn           = data.aws_acm_certificate.issued.arn
  container_port            = var.container_port
  container_name            = join("-", [var.product, var.service, local.workspace])
  iam_ecs_execution_policy  = file("${path.module}/policies/ecs-execution-policy.json")
  iam_ecs_execution_role    = file("${path.module}/policies/ecs-assume-role.json")
  iam_ecs_task_policy       = file("${path.module}/policies/ecs-task-policy.json")
  iam_ecs_task_role         = file("${path.module}/policies/ecs-task-assume-role.json")
  team                      = local.team
  target_autoscaling_cpu    = var.target_autoscaling_cpu
  target_autoscaling_memory = var.target_autoscaling_memory
  task_definition           = file("${path.module}/templates/${local.workspace}/taskdefinition.json")
  alb_ingress               = lookup(var.alb_ingress, local.workspace)
  alb_ingress_ipv6          = var.alb_ingress_ipv6[local.workspace]

}

