# class apt-cacher-ng
#

class apt-cacher-ng($account,$password) {
  package { 'apt-cacher-ng':
    ensure => installed,
  }

  file { '/etc/apt-cacher-ng/security.conf':
    ensure  => file,
    path    => '/etc/apt-cacher-ng/security.conf',
    mode    => '0644',
    require => Package['apt-cacher-ng'],
    content => template('apt-cacher-ng/security.erb'),
    notify  => Service['apt-cacher-ng']
  }

  service { 'apt-cacher-ng':
    ensure      => running,
    enable      => true,
    hasstatus   => true,
    hasrestart  => true,
    require     => Package['apt-cacher-ng'],
  }
}
