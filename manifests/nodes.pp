class base {
  include sudo, ssh, users
}

node default {
	include base
}

# TODO(5): Investigate if possible to build this using nodes.json file from vagrant
node 'puppetmaster.local' {
  notify{"Configuring puppetmaster": }
	include base
}

node 'media-server.local' {
  notify{"Configuring media-server": }
  include base, avahi
}
