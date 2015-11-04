class transmission::config {
  
  $download_dir = transmission::config::download_dirdir
  $incomplete_dir = transmission::config::incomplete_dir
  $rpc_url = transmission::config::rpc_url
  $username = transmission::config::username

  file { "/etc/transmission-daemon/settings.json" :
    ensure => present,
    owner => 'debian-transmission',
    group => 'debian-transmission',
    mode => 0400,
    content => template('transmission/etc/transmission-daemon/settings.json.erb'),
    require => Class["transmission::install"]
    # notify => Class["transmission::service"],
  }
}