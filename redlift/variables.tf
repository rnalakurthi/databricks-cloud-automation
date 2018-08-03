variable "aws_access_key" {
  type = "string"
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type = "string"
  description = "AWS Secrete Key"
}

variable "expire_query_results_days" {
  type = "string"
  description = "# days before query results stored in S3 unload bucket are expired"
  default = "10"
}

variable "aws_region" {
  type = "string"
  description = "The region where AWS operations will take place"
}

variable "custom_unload_bucket_name" {
  type = "string"
  description = "Optionally assign a custom name to the temporary S3 bucket which is used to unload query results from Redshift"
  default = "redshift-unload-to-databricks"
}

variable "custom_redshift_iam_role_name" {
  type = "string"
  description = "Optionally assign a custom name to the IAM role which will attach to the Redshift cluster and allow unloading query results to the S3 bucket"
  default = "redshift-unload-to-databricks"
}

# Ideally these would be pulled from tfstate
variable "redshift_config" {
  type = "map"
}