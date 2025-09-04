resource "postgresql_schema" "pgconf_2025" {
  name          = "pgconf_2025"
  database      = postgresql_database.pgconf_database.name
  owner         = postgresql_role.admin_user.name
  if_not_exists = true
  drop_cascade  = false
}
