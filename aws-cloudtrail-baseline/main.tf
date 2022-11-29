data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

module "cloudtrail-baseline" {
  source = "nozaq/secure-baseline/aws//modules/cloudtrail-baseline"

  aws_account_id = data.aws_caller_identity.current.account_id
  s3_bucket_name = "cloudtrail"
  region = data.aws_region.current.name
}
