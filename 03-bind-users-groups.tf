resource "postgresql_grant_role" "attender_one" {
  role       = postgresql_role.attenders.name
  grant_role = postgresql_role.attender_user.name
}

resource "postgresql_grant_role" "speaker_one" {
  role       = postgresql_role.speakers.name
  grant_role = postgresql_role.speaker_user.name
}
