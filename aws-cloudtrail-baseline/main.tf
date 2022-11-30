data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

module "cloudtrail-baseline" {
  source = "nozaq/secure-baseline/aws//modules/cloudtrail-baseline"

  aws_account_id = data.aws_caller_identity.current.account_id
  region = data.aws_region.current.name
  
  s3_bucket_name = var.s3_bucket_name
}
