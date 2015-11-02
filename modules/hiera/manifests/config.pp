class hiera::config {

  file { "/etc/puppet/environments/$environment/hieradata/nodes/puppetmaster.local.yaml":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0777,
    source => "puppet:///modules/hiera/etc/puppet/environments/$environment/hieradata/nodes/puppetmaster.local.yaml",
    require => [
      File["/etc/puppet/hiera.yaml"],
      File["/etc/puppet/environments/$environment/hieradata"]
    ]
  }

  file { "/etc/puppet/environments/$environment/hieradata/nodes/media-server.local.yaml":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0777,
    source => "puppet:///modules/hiera/etc/puppet/environments/$environment/hieradata/nodes/media-server.local.yaml",
    require => [
      File["/etc/puppet/hiera.yaml"],
      File["/etc/puppet/environments/$environment/hieradata"]
    ]
  }

  file { "/etc/puppet/environments/$environment/hieradata/common.yaml":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0777,
    source => "puppet:///modules/hiera/etc/puppet/environments/$environment/hieradata/common.yaml",
    require => [
      File["/etc/puppet/hiera.yaml"],
      File["/etc/puppet/environments/$environment/hieradata"] 
    ]
  }

  file { "/etc/puppet/environments/$environment/hieradata/nodes":
    ensure => directory,
    owner => 'root',
    group => 'root',
    mode => 0777,
  }

  file { "/etc/puppet/environments/$environment/hieradata":
    ensure => directory,
    owner => 'root',
    group => 'root',
    mode => 0777,
  }

  file { "/etc/puppet/hiera.yaml":
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0777,
    source => "puppet:///modules/hiera/etc/puppet/hiera.yaml",
    require => Ini_setting["hiera_config"]
  }

  ini_setting { "hiera_config":
    ensure=>present,
    path=>"/etc/puppet/puppet.conf", 
    section=>"master", 
    setting=>"hiera_config",
    value=>"/etc/puppet/hiera.yaml"
 }
}