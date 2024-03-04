
resource "aws_sns_topic" "ecr_scanner_topic" {
  name = "${var.ENV}-ecr-scanner-topic"
}

resource "aws_kms_key" "sns_key" {
  description             = "SNS Topic Encryption Key"
  enable_key_rotation     = true
}

resource "aws_sns_topic_encryption" "my_topic_encryption" {
  topic_arn = aws_sns_topic.ecr_scanner_topic.arn
  key_id    = aws_kms_key.sns_key.arn
}