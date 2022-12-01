resource "random_password" "password" {
  for_each = {
    for member in csvdecode(file("${var.file}")) :
    member.username => member
  }
  length  = var.password_length
  special = var.use_special_characters
}

resource "local_sensitive_file" "passwords" {
  for_each = {
    for member in csvdecode(file("${var.file}")) :
    member.username => member
  }

  content  = <<EOF
${each.value.email} / ${random_password.password[each.key].result}
EOF
  filename = "passwords/user.txt"
}

for each 