class ddclient::config {
  file { "/etc/ddclient.conf" :
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0400,
    source => "puppet:///modules/ddclient/etc/ddclient.conf",
    require => Class["ddclient::install"]
    # notify => Class["transmission::service"],
  }
}