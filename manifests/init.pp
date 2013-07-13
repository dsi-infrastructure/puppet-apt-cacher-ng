# class apt-cacher-ng
#

class apt-cacher-ng($account,$password) {
	package { 'apt-cacher-ng':
		ensure => installed,
	}

	file { '/etc/apt-cacher-ng/security.conf':
		path    => '/etc/apt-cacher-ng/security.conf',
		ensure  => file,
		mode	=> 0644,
		require => Package['apt-cacher-ng'],
		content => template('apt-cacher-ng/security.erb'),
		notify  => Service['apt-cacher-ng']
	}

	service { "apt-cacher-ng":
		ensure		=> running,
		hasstatus	=> true,
		hasrestart	=> true,
		require		=> Package["apt-cacher-ng"],
	}
}
