# Terraform configuration

provider "aws" {
  region = "us-east-1"
}

module "rds-kms" {

  source = "./modules/kms"
  alias_name = "test-kms1"
  description = "Test KMS Key"
  is_enabled = true

  tags = {
    Environment = "dev"
  }
}

module "secrets-manager" {
    source = "./modules/secrets-manager"
    kms_key_id = module.rds-kms.key_id
    name       = "test-secrets"
    length = 8
    tags = {
        Environment = "dev"
    }
  }


