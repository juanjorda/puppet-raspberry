class transmission::config {
  file { "/etc/transmission-daemon/settings.json" :
    ensure => present,
    owner => 'debian-transmission',
    group => 'debian-transmission',
    mode => 0400,
    source => "puppet:///modules/transmission/etc/transmission-daemon/settings.json",
    require => Class["transmission::install"],
    # IMHERE: im working here
    notify => Class["ssh::service"],
  }
}