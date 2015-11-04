class disk::config ( $mounting_point = disk::config::mounting_point, $uuid = disk::config::uuid){
	file { $mounting_point:
		owner => "root",
		group => "root",
		ensure => "directory",
		mode => 0440
	}

	mount { 'ExternalDisk':
		name        => $mounting_point,
		ensure      => 'mounted',
		atboot      => true,
		device      => $uuid,
		fstype      => 'ext4',
		options     => 'defaults',
		require     => File[$mounting_point],
	}	
}
