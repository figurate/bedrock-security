# AWS Analyzer Baseline

module "aws-analyzer-baseline" {
  source = "./aws-analyzer-baseline"
  count = var.access_analyzer_baseline_enabled ? 1 : 0
}


# AWS Config Baseline

module "aws-config-baseline" {
  source = "./aws-config-baseline"
  count = var.aws_config_baseline_enabled ? 1 : 0

  iam_role_arn = module.config-default-role[0].role_arn
  s3_bucket_name = module.config_s3_bucket[0].bucket_id
}

module "config-default-role" {
  source = "figurate/iam-role/aws//modules/account"
  count = var.aws_config_baseline_enabled ? 1 : 0

  name = var.config_iam_role_name
  description = "AWS Config Role"
}

module "config_s3_bucket" {
  source = "figurate/s3-bucket/aws"
  count = var.aws_config_baseline_enabled ? 1 : 0

  bucket = var.config_s3_bucket_name
}


# AWS CloudTrail Baseline

module "aws-cloudtrail-baseline" {
  source = "./aws-cloudtrail-baseline"
  count = var.cloudtrail_baseline_enabled ? 1 : 0

  s3_bucket_name = module.cloudtrail_s3_bucket[0].bucket_id
}

module "cloudtrail_s3_bucket" {
  source = "figurate/s3-bucket/aws"
  count = var.cloudtrail_baseline_enabled ? 1 : 0

  bucket = var.cloudtrail_s3_bucket_name
}


# AWS CloudWatch Alarms Baseline

module "aws-alarm-baseline" {
  source = "./aws-alarm-baseline"
  count = var.cloudwatch_baseline_enabled ? 1 : 0

  cloudtrail_log_group_name = module.cloudtrail_log_group[0].log_group_name
}

module "cloudtrail_log_group" {
  source = "figurate/cloudwatch-log-group/aws"
  version = "1.0.1"
  count = var.cloudwatch_baseline_enabled ? 1 : 0

  name = var.cloudtrail_log_group_name
  kms_key_id = module.cloudwatch_logs_kms[0].key_id
}

module "cloudwatch_logs_kms" {
  source = "figurate/kms-key/aws"
  count = var.cloudwatch_baseline_enabled ? 1 : 0
  version = "1.0.5"
  
  alias = var.cloudwatch_kms_key
  description = "KMS Key for encrypting CloudWatch Logs"
}


# AWS EBS Baseline

module "aws-ebs-baseline" {
  source = "./aws-ebs-baseline"
  count = var.ebs_baseline_enabled ? 1 : 0
}


# AWS GuardDuty Baseline

module "aws-guardduty-baseline" {
  source = "./aws-guardduty-baseline"
  count = var.guardduty_baseline_enabled ? 1 : 0
}


# AWS IAM Baseline

module "aws-iam-baseline" {
  source = "./aws-iam-baseline"
  count = var.iam_baseline_enabled ? 1 : 0

  support_iam_role_principal_arns = [module.iam-support-role[0].role_arn]
}

module "iam-support-role" {
  source = "figurate/iam-role/aws//modules/account"
  count = var.iam_baseline_enabled ? 1 : 0

  name = var.support_iam_role_principal_name
  description = "AWS IAM Support Role"
}


# AWS S3 Baseline

module "aws-s3-baseline" {
  source = "./aws-s3-baseline"
  count = var.s3_baseline_enabled ? 1 : 0
}
