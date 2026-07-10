data "aws_secretsmanager_secret" "db" {
  name = "/dev/db/pwd"
}
data "aws_secretsmanager_secret_version" "db" {
  secret_id = data.aws_secretsmanager_secret.db.id
}
output "password" {
  value     = data.aws_secretsmanager_secret_version.db.secret_string
  sensitive = true
}

//terraform output password            will shows the pwd
