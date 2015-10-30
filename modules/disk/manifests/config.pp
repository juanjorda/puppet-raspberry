class disk::config {
	file { "/media/SuperJuanter":
	  owner => "root",
	  group => "root",
     ensure => "directory",
	  mode => 0440
	}

	mount { 'ExternalDisk':
	  name        => '/media/SuperJuanter',
	  ensure      => 'mounted',
	  atboot      => true,
	  device      => '/dev/sda2',
	  fstype      => 'ext4',
	  options     => 'defaults',
	  require     => File['/media/SuperJuanter'],
	}
}