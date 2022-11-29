module "iam-baseline" {
  source = "nozaq/secure-baseline/aws//modules/iam-baseline"

  support_iam_role_principal_arns = []
}
