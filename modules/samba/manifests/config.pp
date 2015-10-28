class transmission::config {
  file { "/etc/samba/smb.conf" :
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0400,
    source => "puppet:///modules/samba/etc/samba/smb.conf",
    require => Class["samba::install"]
    # notify => Class["transmission::service"],
  }
}