terraform {
  backend "remote" {
    organization = "Okra-Inc"

    workspaces {
      prefix = "okra-js-"
    }
  }

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      version = "~> 4.53.0"
    }
  }
}
