module "aws-analyzer-baseline" {
  source = "./aws-analyzer-baseline"
  count = var.access_analyzer_baseline_enabled ? 1 : 0
}

module "aws-config-baseline" {
  source = "./aws-config-baseline"
  count = var.aws_config_baseline_enabled ? 1 : 0
}

module "aws-cloudtrail-baseline" {
  source = "./aws-cloudtrail-baseline"
  count = var.cloudtrail_baseline_enabled ? 1 : 0
}

module "aws-alarm-baseline" {
  source = "./aws-alarm-baseline"
  count = var.cloudwatch_baseline_enabled ? 1 : 0
}

module "aws-ebs-baseline" {
  source = "./aws-ebs-baseline"
  count = var.ebs_baseline_enabled ? 1 : 0
}

module "aws-guardduty-baseline" {
  source = "./aws-guardduty-baseline"
  count = var.guardduty_baseline_enabled ? 1 : 0
}

module "aws-iam-baseline" {
  source = "./aws-iam-baseline"
  count = var.iam_baseline_enabled ? 1 : 0
}

module "aws-s3-baseline" {
  source = "./aws-s3-baseline"
  count = var.s3_baseline_enabled ? 1 : 0
}
