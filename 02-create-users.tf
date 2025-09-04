resource "random_password" "pw_admin_user" {
  length      = 32
  special     = true
  min_lower   = 3
  min_numeric = 3
  min_special = 3
  keepers = {
    version = "1"
  }
}

resource "random_password" "pw_speaker_user" {
  length      = 32
  special     = true
  min_lower   = 3
  min_numeric = 3
  min_special = 3
  keepers = {
    version = "1"
  }
}

resource "random_password" "pw_attender_user" {
  length      = 32
  special     = true
  min_lower   = 3
  min_numeric = 3
  min_special = 3
  keepers = {
    version = "1"
  }
}

resource "postgresql_role" "admin_user" {
  name               = "pgconf"
  superuser          = false
  create_database    = false
  create_role        = false
  inherit            = true
  login              = true
  encrypted_password = true
  password           = random_password.pw_admin_user.result
  roles              = []
  assume_role        = null
}

resource "postgresql_role" "attender_user" {
  name               = "attender_one"
  superuser          = false
  create_database    = false
  create_role        = false
  inherit            = true
  login              = true
  encrypted_password = true
  password           = random_password.pw_attender_user.result
  roles              = []
  assume_role        = null
}

resource "postgresql_role" "speaker_user" {
  name               = "speaker_one"
  superuser          = false
  create_database    = false
  create_role        = false
  inherit            = true
  login              = true
  encrypted_password = true
  password           = random_password.pw_speaker_user.result
  roles              = []
  assume_role        = null
}
