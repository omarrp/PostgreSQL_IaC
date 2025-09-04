resource "postgresql_database" "pgconf_database" {
  name     = "pgconf"
  owner    = postgresql_role.admin_user.name
  template = "template0"
}
