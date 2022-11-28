variable "access_analyzer_baseline_enabled" {
  description = "Enable Access Analyser baseline configuration for an AWS account"
  default = false
}

variable "aws_config_baseline_enabled" {
  description = "Enable Config baseline configuration for an AWS account"
  default = false
}

variable "cloudtrail_baseline_enabled" {
  description = "Enable CloudTrail baseline configuration for an AWS account"
  default = false
}

variable "cloudwatch_baseline_enabled" {
  description = "Enable CloudWatch Alarms baseline configuration for an AWS account"
  default = false
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

variable "s3_baseline_enabled" {
  description = "Enable S3 baseline configuration for an AWS account"
  default = false
}
