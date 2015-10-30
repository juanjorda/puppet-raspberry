class hiera::config {
  file { "/etc/puppet/environments/%{environment}/hieradata/common.yaml":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0600,
    source => "puppet:///modules/hiera/etc/puppet/environments/%{environment}/hieradata/common.yaml",
    require => File["/etc/puppet/hiera.yaml"]
  }

  file { "/etc/puppet/hiera.yaml":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0600,
    source => "puppet:///modules/hiera/etc/puppet/hiera.yaml",
    require => Ini_setting["hiera_config"]
  }

  ini_setting { "hiera_config":
    ensure=>present,
    path=>"/etc/puppet/puppet.conf", 
    section=>"main", 
    setting=>"hiera_config",
    value=>"/etc/puppet/hiera.yaml"
 }
}