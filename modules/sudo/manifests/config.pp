class sudo::config {
	file { "/etc/sudoers":
	  owner => "root",
	  group => "root",
	  mode => 0440,
	  source => "puppet://$puppetserver/modules/sudo/etc/sudoers",
	  require => Package["sudo"],
	}
}