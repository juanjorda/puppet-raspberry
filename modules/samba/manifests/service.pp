class samba::service {
  service { samba:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["samba::config"],
  }

}