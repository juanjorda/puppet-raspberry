class ddclient::service {
  service { ddclient:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["ddclient::config"],
  }

}
