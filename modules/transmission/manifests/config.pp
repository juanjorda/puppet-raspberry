class transmission::config {
  
  $download_dir = transmission::config::download_dirdir
  $incomplete_dir = transmission::config::incomplete_dir
  $rpc_url = transmission::config::rpc_url
  $username = transmission::config::username

  file { "/var/lib/transmission-daemon/info/settings.json" :
    ensure => present,
    owner => 'debian-transmission',
    group => 'debian-transmission',
    mode => 0400,
    content => template('transmission/var/lib/transmission-daemon/info/settings.json.erb'),
    require => Class["transmission::install"]
    # notify => Class["transmission::service"],
  }
}