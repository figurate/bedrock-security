variable "access_analyzer_baseline_enabled" {
  description = "Enable Access Analyser baseline configuration for an AWS account"
  default = false
}


variable "aws_config_baseline_enabled" {
  description = "Enable Config baseline configuration for an AWS account"
  default = false
}

variable "config_iam_role_name" {
  description = "IAM Role for AWS Config"
  default = "DefaultConfigRole"
}

variable "config_s3_bucket_name" {
  description = "S3 Bucket name hint for AWS Config"
  default = "config"
}


variable "cloudtrail_baseline_enabled" {
  description = "Enable CloudTrail baseline configuration for an AWS account"
  default = false
}

variable "cloudtrail_s3_bucket_name" {
  description = "Naming hint for CloudTrail S3 Bucket"
  default = "cloudtrail"
}


variable "cloudwatch_baseline_enabled" {
  description = "Enable CloudWatch Alarms baseline configuration for an AWS account"
  default = false
}

variable "cloudtrail_log_group_name" {
  description = "Naming hint for CloudWatch Log Group for CloudTrail"
  default = "cloudtrail"
}


variable "ebs_baseline_enabled" {
  description = "Enable EBS baseline configuration for an AWS account"
  default = false
}


variable "guardduty_baseline_enabled" {
  description = "Enable GuardDuty baseline configuration for an AWS account"
  default = false
}


variable "iam_baseline_enabled" {
  description = "Enable IAM baseline configuration for an AWS account"
  default = false
}

variable "support_iam_role_principal_name" {
  description = "Naming hint for the support IAM role"
  default = "DefaultSupportRole"
}


variable "s3_baseline_enabled" {
  description = "Enable S3 baseline configuration for an AWS account"
  default = false
}

variable "cloudwatch_kms_key" {
  description = "Alias name for encrypting CloudWatch logs"
  default = "cloudwatch-logs"
}
