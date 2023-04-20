variable "region" {
  default = "eu-west-3"
}

variable "service" {
  default = "js"
}

variable "TFC_WORKSPACE_NAME" {
  type    = string
  default = ""
}

variable "min_capacity" {
  default = {
    development = 1
    staging     = 1
    production  = 1
  }
}

variable "max_capacity" {
  default = {
    development = 1
    staging     = 1
    production  = 5
  }
}

variable "hostname" {
  default = {
    development = "cdn.dev.okra.ng"
    staging     = "cdn.staging.okra.ng"
    production  = "cdn.okra.ng"
  }
}

variable "environment_shortname" {
  default = {
    development = "dev"
    staging     = "stg"
    production  = "prod"
  }
}

variable "route53_zone_id" {
  default = {
    development = "dev.okra.ng"
    staging     = "staging.okra.ng"
    production  = "okra.ng"
  }
}

variable "container_port" {
  default = 80
}

variable "product" {
  default = "okra"
}

variable "target_autoscaling_cpu" {
  description = "To auto scale cpu"
  default     = 75

}
variable "target_autoscaling_memory" {
  description = "To auto scale memory"
  default     = 75
}

variable "api_healthcheck" {
  default = "/"
}

variable "cloudwatch_logs_retention" {
  type    = number
  default = 30
}

variable "alb_ingress" {
  default = {
    development = ["10.100.0.0/16", "54.196.188.165/32", "102.176.246.8/32"]
    staging     = ["10.10.0.0/16", "54.196.188.165/32", "102.176.246.8/32"]
    production  = ["0.0.0.0/0"]
  }
}
