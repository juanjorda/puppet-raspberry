class base {
  include sudo, ssh
}

node 'media-server' {
  include base, avahi
}
