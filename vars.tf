variable "backend_name" {
  description = "The name used to create both the bucket & the DynamoDB table. (Note: This must be globally unique)"
  type        = string
}

variable "bucket_versioning" {
  description = "Enable s3 bucket versioning."
  type        = bool
  default     = true
}

variable "bucket_mfa_delete" {
  description = "Enable bucket MFA delete."
  type        = bool
  default     = false
}