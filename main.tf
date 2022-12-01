module "password-generator" {
  source = "./modules/password-generator"
  file   = "members.csv"
  /* password_length       = 12 */
  /* use_special_characters = false */
  /* users_to_delete = ["alex"] */
  #post_passwords_to_slack = true


}

locals {
  envrionment = "dev"
}

resource "local_file" "user" {
  filename = "passwords/user.txt"
  content  = "Is this working?"
}