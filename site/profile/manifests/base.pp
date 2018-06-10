class profile::base {
	include ::ssh

	

	user {'jgoncalves':
		ensure	=> present,
		home 	=> '/home/jeferson',
		managehome => true,
	}

	ssh_authorized_key { 'jeferson90goncalves@gmail.com':
 		ensure => present,
		user   => 'jgoncalves',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCspd2cy0JOlZwH09M4fYOQjBN0OOFzDavtFLBfBpm1QPzoEto+b65mK7OFIcU7ryC6tfrVr0F8z1UD2mk3fEJWIGlD0KUYXhFx2WlbvuJl7D8IxRmJwWw5wiGNHbWPXCU1aktUBQXylpv452Wm1g2DORRrBOVWDbuv/SbfsgnU4K/2S5QQMI6Zx9QC6ZxaQKadAnzwF36LCb3TWZxRwINkIug26ELhjY7IVh87zEC8it1mb2CkWoP43mbvVWZG5FLVOUrk5ds7C059wubF239Bn/USV53WLKc2CLoRfDRj/yBakM6xi0qBaANnApRjopAfW/SuzBIWqEaeVe3TR6lF',
	}
}
