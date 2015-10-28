class transmission::config {
  file { "/var/lib/transmission-daemon/info/settings.json" :
    ensure => present,
    owner => 'debian-transmission',
    group => 'debian-transmission',
    mode => 0400,
    source => "puppet:///modules/transmission/var/lib/transmission-daemon/info/settings.json",
    require => Class["transmission::install"]
    # notify => Class["transmission::service"],
  }
}