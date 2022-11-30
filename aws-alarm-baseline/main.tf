module "alarm-baseline" {
  source = "nozaq/secure-baseline/aws//modules/alarm-baseline"

  cloudtrail_log_group_name = var.cloudtrail_log_group_name
}
