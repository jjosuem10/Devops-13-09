resource "aws_dynamodb_table" "invoice_db" {
  name = "jona_costumer_table"

  billing_mode = "PAY_PER_REQUEST"

  hash_key ="CustomerID"


attribute {
  name = "CustomerID"

  type = "N"

  }
}