resource "aws_ssm_parameter" "parameter" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  value = var.parameters[count.index].value
  overwrite = true # will over-write the existing parameter and add any more.
  type = "String"
  key_id = "46fec639-a30b-4dcc-a7b0-c94cc0b7810f"
}