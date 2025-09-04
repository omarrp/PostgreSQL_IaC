resource "postgresql_role" "speakers" {
  name                      = "pgconf_2025_speakers"
  superuser                 = false
  create_database           = false
  create_role               = false
  inherit                   = true
  login                     = false
  replication               = false
  bypass_row_level_security = false
  roles                     = []
  search_path               = null
  valid_until               = null
  skip_drop_role            = true
  skip_reassign_owned       = true
  assume_role               = null
}

resource "postgresql_role" "attenders" {
  name                      = "pgconf_2025_attenders"
  superuser                 = false
  create_database           = false
  create_role               = false
  inherit                   = true
  login                     = false
  replication               = false
  bypass_row_level_security = false
  roles                     = []
  search_path               = null
  valid_until               = null
  skip_drop_role            = true
  skip_reassign_owned       = true
  assume_role               = null
}
