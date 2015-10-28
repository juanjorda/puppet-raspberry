class transmission::install {
	package { transmission-daemon:
		ensure => installed
  }
}