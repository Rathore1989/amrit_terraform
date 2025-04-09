terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  access_key = var.akey
  secret_key = var.skey
  region = var.region
}

terraform { 
  cloud { 
    organization = "amrit-terraform" 
    workspaces { 
      name = "amritdev" 
    } 
  } 
}
terraform { 
  cloud { 
    organization = "amrit-terraform" 
    workspaces { 
      name = "amrituat" 
    } 
  } 
}
terraform { 
  cloud { 
    organization = "amrit-terraform" 
    workspaces { 
      name = "amritprod" 
    } 
  } 
}