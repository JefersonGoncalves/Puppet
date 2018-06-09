class profile::base {
	include ::ssh

	user {'admin':
		ensure	=> present,
	}

	ssh_authorized_key { 'jeferson90goncalves@gmail.com':
 		ensure => present,
		user   => 'jgoncalves',
		type   => 'ssh-rsa',
		key    => 'This is a test',
	}
}
