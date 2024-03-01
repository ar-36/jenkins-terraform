
resource "aws_sns_topic" "ecr_scanner_topic" {
  name = "${var.ENV}-ecr-scanner-topic"
}