resource "postgresql_function" "pgconf_increment" {
  name = "increment"
  database = postgresql_database.pgconf_database.name
  schema = postgresql_schema.pgconf_2025.name
  arg {
      name = "i"
      type = "integer"
  }
  returns = "integer"
  language = "plpgsql"
  body = <<-EOF
      BEGIN
          RETURN i + 1;
      END;
  EOF

  depends_on = [ postgresql_schema.pgconf_2025 ]
}