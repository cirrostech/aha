variable "description" {
  default = "Terraform managed secret"
  type    = string
}

variable "kms_key_id" {
  default     = null
  description = "The KMS Key ID to encrypt the secret. KMS key arn or alias can be used."
}

variable "policy" {
  default     = null
  description = "The resource policy which controls access to the secret."
}

variable "name" {
  description = "Name of secret to store"
  type        = string
}

# variable "value" {
#   description = "Secret value to store"
#   type        = string
# }

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the object."
  type        = map
  default     = {}
}

variable "length" {
  description = "Length of string"
  type        = number
}

variable "min_lower" {
  default     = 0
  description = "Minimum number of lower case characters"
  type        = number
}

variable "min_numeric" {
  default     = 0
  description = "Minimum number of numbers"
  type        = number
}

variable "min_special" {
  default     = 0
  description = "Minimum number of special characters"
  type        = number
}

variable "min_upper" {
  default     = 0
  description = "Minimum number of upper case characters"
  type        = number
}

variable "override_special" {
  type    = string
  default = ""
}

variable "use_lower" {
  default     = true
  description = "Use lower case  characters"
  type        = bool
}

variable "use_numeric" {
  default     = true
  description = "Use numbers"
  type        = bool
}

variable "use_special" {
  default     = true
  description = "Use special characters"
  type        = bool
}

variable "use_upper" {
  default     = true
  description = "Use upper case characters"
  type        = bool
}