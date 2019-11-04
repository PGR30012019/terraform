resource "heroku_app" "ci" {
  name   = "${var.app_name}-app-ci"
  region = "eu"
  sensitive_var = {
    LOGZ_TOKEN = "${var.logz_token}"
    LOGZ_URL = "${var.logz_url}"
  }
}

resource "heroku_app" "staging" {
  name   = "${var.app_name}-app-staging"
  region = "eu"
  sensitive_var = {
    LOGZ_TOKEN = "${var.logz_token}"
    LOGZ_URL = "${var.logz_url}"
  }
}

resource "heroku_app" "production" {
  name   = "${var.app_name}-app-prod"
  region = "eu"
  sensitive_var = {
    LOGZ_TOKEN = "${var.logz_token}"
    LOGZ_URL = "${var.logz_url}"
  }
}

resource "heroku_pipeline" "app" {
  name = "${var.pipeline_name}"
}

resource "heroku_pipeline_coupling" "ci" {
  app      = "${heroku_app.ci.name}"
  pipeline = "${heroku_pipeline.app.id}"
  stage    = "development"
}

resource "heroku_pipeline_coupling" "staging" {
  app      = "${heroku_app.staging.name}"
  pipeline = "${heroku_pipeline.app.id}"
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app      = "${heroku_app.production.name}"
  pipeline = "${heroku_pipeline.app.id}"
  stage    = "production"
}
