provider "aws" {
  profile = "default"
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}
