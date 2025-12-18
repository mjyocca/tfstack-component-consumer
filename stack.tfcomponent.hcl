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
  source = "app.staging.terraform.io/michaelyocca-staging/tfstack-component"
  version = "1.0.0"

  inputs = {
    prefix = var.prefix
    instances = var.instances
  }
}

