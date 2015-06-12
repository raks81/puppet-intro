# Class: haproxy::configure
#
#
class haproxy::configure {
	file { '/etc/haproxy/':
		ensure => directory,
	}

	file { '/etc/haproxy/haproxy.cfg':
		source => 'puppet:///modules/haproxy/haproxy.cfg',
		notify => Service['haproxy'],
	}
}