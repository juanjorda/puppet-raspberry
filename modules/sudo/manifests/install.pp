class sudo {
  include sudo::install, sudo::config, users::delete
}