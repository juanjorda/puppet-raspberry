class samba {
  include samba::install, ssh::config, ssh::service
}