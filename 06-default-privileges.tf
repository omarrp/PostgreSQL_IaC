resource "postgresql_default_privileges" "speaker_table" {
  database    = postgresql_database.pgconf_database.name
  schema      = postgresql_schema.pgconf_2025.name
  role        = postgresql_role.speakers.name
  owner       = postgresql_role.admin_user.name
  object_type = "table"
  privileges  = ["SELECT", "INSERT", "DELETE", "UPDATE"]
}

resource "postgresql_default_privileges" "speaker_sequence" {
  database    = postgresql_database.pgconf_database.name
  schema      = postgresql_schema.pgconf_2025.name
  role        = postgresql_role.speakers.name
  owner       = postgresql_role.admin_user.name
  object_type = "sequence"
  privileges  = ["USAGE"]
}

resource "postgresql_default_privileges" "speaker_routine" {
  database    = postgresql_database.pgconf_database.name
  schema      = postgresql_schema.pgconf_2025.name
  role        = postgresql_role.speakers.name
  owner       = postgresql_role.admin_user.name
  object_type = "function"
  privileges  = ["EXECUTE"]
}

resource "postgresql_default_privileges" "attender_table" {
  database    = postgresql_database.pgconf_database.name
  schema      = postgresql_schema.pgconf_2025.name
  role        = postgresql_role.attenders.name
  owner       = postgresql_role.admin_user.name
  object_type = "table"
  privileges  = ["SELECT"]
}
