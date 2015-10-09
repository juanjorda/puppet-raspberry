class base {
  include sudo, ssh
}

node default {
	include base
}

node 'puppetmaster' {
	include base
}

node 'media-server' {
  include base, avahi
}
