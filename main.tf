resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type = "String"
  key_id = "a3cb9203-19b3-4920-8352-f3cc1e6f26c5"
  overwrite = true # will over-write the existing parameter and add any more.
}

#resource "aws_ssm_parameter" "parameters" {
#  count = length(var.parameters)
#  name = var.parameters[count.index].name
#  value = var.parameters[count.index].value
#  overwrite = true # will over-write the existing parameter and add any more.
#  type = "String"
#  key_id = "801d82e5-19a3-4b80-88c6-5947b7b90508"
#}
#
### Passwords are not at all meant to keep inside the code at all, here sice it is a lab we are doing it to save the time.
#resource "aws_ssm_parameter" "passwords" {
#  count  = length(var.passwords)
#  name   = var.passwords[count.index].name
#  value  = var.passwords[count.index].value
#  overwrite = true # will over-write the existing parameter and add any more.
#  type = "SecureString"
#  key_id = "801d82e5-19a3-4b80-88c6-5947b7b90508"
#}