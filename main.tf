
resource "aws_sns_topic" "ecr_scanner_topic" {
  name = "${var.ENV}-ecr-scanner-topic"
  kms_master_key_id = aws_kms_key.sns_key.key_id
}

resource "aws_kms_key" "sns_key" {
  description             = "SNS Topic Encryption Key"
  enable_key_rotation     = true
}