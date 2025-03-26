variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "repository_name" {
  description = "The name of the repository (e.g., 'organization/repository')"
  type        = string
} 