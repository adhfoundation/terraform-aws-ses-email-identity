resource "aws_ses_email_identity" "email" {
  for_each = toset(var.email_identities)

  email = each.key
}
