provider "random" "this" {}
provider "null" "this" {}

required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }

  null = {
    source  = "hashicorp/null"
    version = "~> 3.2.2"
  }
}

stack "my-embedded-stack" {
    source = "tfcdev-86ee0655.ngrok.io/hashicorp/tfstack-component"
    version = "1.0.0"

    inputs = {
        prefix = var.prefix
        instances = var.instances
    }
}

