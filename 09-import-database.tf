# import {
#   to = postgresql_database.pgconf_import_database
#   id = "pgconf_import"
# }

# resource "postgresql_database" "pgconf_import_database" {
#   name     = "pgconf_import"
#   owner    = postgresql_role.admin_user.name
#   template = "template0"
# }

# resource "postgresql_schema" "pgconf_import_schema" {
#   name          = "schema_import"
#   database      = postgresql_database.pgconf_import_database.name
#   owner         = postgresql_role.admin_user.name
#   if_not_exists = true
#   drop_cascade  = false
# }

# resource "postgresql_extension" "pgconf_import_unaccent" {
#   name = "unaccent"
#   database = postgresql_database.pgconf_import_database.name
#   schema = postgresql_schema.pgconf_import_schema.name
# }
