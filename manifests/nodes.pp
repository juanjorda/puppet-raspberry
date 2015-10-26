class base {
  # include sudo, ssh, users
  include sudo, users
}

node default {
	include base
}

node 'puppetmaster.local' {
  notify{"Configuring puppetmaster": }
	include base
}

node 'media-server.local' {
  notify{"Configuring media-server": }
  include base, avahi
}
