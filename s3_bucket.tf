resource "aws_s3_bucket" "invoice_data" {
  bucket = "${var.app_region}-${var.cubeta}"
}    