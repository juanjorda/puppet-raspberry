class disk::config {
	mount { 'ExternalDisk':
	  name        => '/media/SuperJuanter',
	  ensure      => 'mounted',
	  atboot      => true,
	  device      => '/dev/sda2',
	  fstype      => 'ext4',
	  options     => 'defaults',
	}
}