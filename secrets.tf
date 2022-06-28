resource "aws_secretsmanager_secret" "airflow-db-conn-str" {
  name = "airflow-db-5"
}

resource "aws_secretsmanager_secret_version" "airflow-db-conn-value" {
  secret_id     = aws_secretsmanager_secret.airflow-db-conn-str.id
  secret_string = "postgresql://postgres:Password123@database-1.crf5yrxgyqwm.us-west-2.rds.amazonaws.com:5432/api"
}

resource "aws_secretsmanager_secret" "airflow-result-bk-str" {
  name = "airflow-result-bk-5"
}

resource "aws_secretsmanager_secret_version" "airflow-result-bk-value" {
  secret_id     = aws_secretsmanager_secret.airflow-result-bk-str.id
  secret_string = "db+postgresql://postgres:Password123@database-1.crf5yrxgyqwm.us-west-2.rds.amazonaws.com:5432/api"
}

resource "aws_secretsmanager_secret" "api-redis-conn-str" {
  name = "api-redis-5"
}

resource "aws_secretsmanager_secret_version" "api-redis-conn-value" {
  secret_id     = aws_secretsmanager_secret.api-redis-conn-str.id
  secret_string = "redis://redis-service.local.apis.service:6379/1"
}