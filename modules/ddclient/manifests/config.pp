class ddclient::config {
	$server = ddclient::config::server
	$login = ddclient::config::login
	$password = ddclient::config::password
	$domain = ddclient::config::domain

  file { "/etc/ddclient.conf" :
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0400,
    content => template('ddclient/etc/ddclient.conf.erb'),
    require => Class["ddclient::install"]
    # notify => Class["transmission::service"],
  }
}