resource "statuscake_test" "google" {
    website_name = "geiger"
    website_url = "${heroku_app.staging.web_url}"
    test_type = "HTTP"
    check_rate = 300
    contact_group = ["Contact Group"]
}

resource "statuscake_test" "prod" {
    website_name = "geiger"
    website_url = "${heroku_app.staging.web_url}"
    test_type = "HTTP"
    check_rate = 300
    contact_group = ["Contact Group"]
}