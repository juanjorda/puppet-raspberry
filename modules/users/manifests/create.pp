class users::create {
	user { 'juanter':
		ensure  => 'present',
		comment => 'Juan Jorda del Amo,,,',
		groups   => [ 'sudo', 'users' ],
		home    => '/home/juanter/',
		shell   => '/bin/bash',
		uid     => '200',
    # This is to create the home folder
    managehome => true,
	}
}