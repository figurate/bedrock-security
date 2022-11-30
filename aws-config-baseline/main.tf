module "config-baseline" {
  source = "nozaq/secure-baseline/aws//modules/config-baseline"

  iam_role_arn = var.iam_role_arn
  s3_bucket_name = var.s3_bucket_name
}
