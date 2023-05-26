resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  value = var.parameters[count.index].value
  overwrite = true # will over-write the existing parameter and add any more.
  type = "String"
  key_id = "46fec639-a30b-4dcc-a7b0-c94cc0b7810f"
}

## Passwords are not at all meant to keep inside the code at all, here sice it is a lab we are doing it to save the time.
resource "aws_ssm_parameter" "passwords" {
  count  = length(var.passwords)
  name   = var.passwords[count.index].name
  value  = var.passwords[count.index].value
  overwrite = true # will over-write the existing parameter and add any more.
  type = "SecureString"
  key_id = "46fec639-a30b-4dcc-a7b0-c94cc0b7810f"
}