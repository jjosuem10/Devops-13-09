resource  "aws_instance" "invoice_app_server" {
  ami = var.ami
  instance_type = "t2.medium"
  tags = {
    Name = "${var.app_region}--app-server-jona"
  }
  depends_on = [
    aws_dynamodb_table.invoice_db,
    aws_s3_bucket.invoice_data
  ]
}