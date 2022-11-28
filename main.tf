module "access-analyzer-baseline" {
  source = "./access-analyzer-baseline"
  count = var.access_analyzer_baseline_enabled ? 1 : 0
}

module "aws-config-baseline" {
  source = "./aws-config-baseline"
  count = var.aws_config_baseline_enabled ? 1 : 0
}

module "cloudtrail-baseline" {
  source = "./cloudtrail-baseline"
  count = var.cloudtrail_baseline_enabled ? 1 : 0
}

module "cloudwatch-alarm-baseline" {
  source = "./cloudwatch-alarm-baseline"
  count = var.cloudwatch_baseline_enabled ? 1 : 0
}

module "ebs-baseline" {
  source = "./ebs-baseline"
  count = var.ebs_baseline_enabled ? 1 : 0
}

module "guardduty-baseline" {
  source = "./guardduty-baseline"
  count = var.guardduty_baseline_enabled ? 1 : 0
}

module "iam-baseline" {
  source = "./iam-baseline"
  count = var.iam_baseline_enabled ? 1 : 0
}

module "s3-baseline" {
  source = "./s3-baseline"
  count = var.s3_baseline_enabled ? 1 : 0
}
