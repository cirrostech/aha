
resource "random_password" "random_string" {
  length           = var.length
  lower            = var.use_lower
  numeric           = var.use_numeric
  min_lower        = var.min_lower
  min_numeric      = var.min_numeric
  min_special      = var.min_special
  min_upper        = var.min_upper
  override_special = var.override_special == "" ? null : var.override_special
  special          = var.use_special
  upper            = var.use_upper
}

resource "aws_secretsmanager_secret" "secret" {
  kms_key_id = var.kms_key_id
  name       = var.name
  policy     = var.policy
  tags       = var.tags
}

resource "aws_secretsmanager_secret_version" "secret" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = jsonencode({"password": "${random_password.random_string.result}"})
}