resource "aws_ssm_parameter" "parameter" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type = "SecureString"
  Key_id = "801d82e5-19a3-4b80-88c6-5947b7b90508"

}