class hiera::config {
  file { "/etc/puppet/environments/$environment/hieradata/nodes/puppetmaster.local":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0644,
    source => "puppet:///modules/hiera/etc/puppet/environments/$environment/hieradata/nodes/puppetmaster.local",
    require => File["/etc/puppet/hiera.yaml"],File["/etc/puppet/environments/$environment/hieradata"] 
  }

  file { "/etc/puppet/environments/$environment/hieradata/nodes/media-server.local":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0644,
    source => "puppet:///modules/hiera/etc/puppet/environments/$environment/hieradata/nodes/media-server.local",
    require => File["/etc/puppet/hiera.yaml"],File["/etc/puppet/environments/$environment/hieradata"] 
  }

  file { "/etc/puppet/environments/$environment/hieradata/common.yaml":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0600,
    source => "puppet:///modules/hiera/etc/puppet/environments/$environment/hieradata/common.yaml",
    require => File["/etc/puppet/hiera.yaml"],File["/etc/puppet/environments/$environment/hieradata"] 
  }

  file { "/etc/puppet/environments/$environment/hieradata":
    ensure => directory,
    owner => 'root',
    group => 'root',
    mode => 0600
  }

  file { "/etc/puppet/hiera.yaml":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0644,
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