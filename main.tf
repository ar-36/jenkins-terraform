
resource "aws_sns_topic" "ecr_scanner_topic" {
  name = "${var.ENV}-ecr-scanner-topic"
  kms_master_key_id = "alias/aws/sns"
}