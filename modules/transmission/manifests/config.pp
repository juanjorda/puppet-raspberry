class transmission::config {
  
  $download-dir = transmission::config::download-dir
  $incomplete-dir = transmission::config::incomplete-dir
  $rpc-url = transmission::config::rpc-url
  $username = transmission::config::username

  file { "/var/lib/transmission-daemon/info/settings.json" :
    ensure => present,
    owner => 'debian-transmission',
    group => 'debian-transmission',
    mode => 0400,
    content => template('/transmission/var/lib/transmission-daemon/info/settings.json'),
    require => Class["transmission::install"]
    # notify => Class["transmission::service"],
  }
}