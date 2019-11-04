provider "opsgenie" {
  version = "0.2.3"
  api_url = "api.eu.opsgenie.com"
}

resource "opsgenie_user" "tom" {
  username  = "blizzard.helper@hotmail.com"
  full_name = "tom name"
  role      = "Admin"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}


resource "opsgenie_user" "alex" {
  username  = "devopsintheskyexam@hotmail.com"
  full_name = "alex name"
  role      = "User"
  locale    = "no_NO"
  timezone  = "Europe/Oslo"
}

resource "opsgenie_team" "test" {
  name        = "name_example"
  description = "This team deals with all the things"

  member {
    id   = "${opsgenie_user.tom.id}"
    role = "admin"
  }

  member {
      id   = "${opsgenie_user.alex.id}"
      role = "user"
    }
}
