resource "postgresql_extension" "pgconf_unaccent" {
  name     = "unaccent"
  database = postgresql_database.pgconf_database.name
  schema   = postgresql_schema.pgconf_2025.name
}
