class samba::service {
  service { smbd:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["samba::config"],
  }

  service { nmbd:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["samba::config"],
  }
}