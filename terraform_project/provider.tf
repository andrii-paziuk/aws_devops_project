provider "aws" {
  region     = var.aws_region
  access_key = "AKIAT4NPDXM4EVKBO6GD"
  secret_key = "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"

}

provider "kubernetes" {
  config_path = "~/.kube/config"
}
