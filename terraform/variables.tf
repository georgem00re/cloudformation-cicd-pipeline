
variable "TF_STATE_BUCKET_NAME" {
  type        = string
  description = "The name of the S3 bucket used for storing Terraform state"
}

variable "TF_STATE_LOCK_TABLE_NAME" {
  type = string
  description = "The name of the DynamoDB table used for storing Terraform state lock"
}
