class transmission::config {
  file { "/etc/samba/smb.conf" :
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0400,
    content => template('samba/etc/samba/smb.conf.erb'),
    require => Class["samba::install"]
    # notify => Class["transmission::service"],
  }
}