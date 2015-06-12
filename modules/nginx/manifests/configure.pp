# Class: nginx::configure
#
#
class nginx::configure {
	# resources
	file { '/var/www/':
		ensure => directory,
	}

	file { '/var/www/cinema':
		ensure => directory,
	}

	file { '/etc/nginx/conf.d/default.conf':
		source => 'puppet:///modules/nginx/cinema.conf',
		notify => Service['nginx'],
	}

	file { '/var/www/cinema/index.html':
		source => 'puppet:///modules/nginx/index.html',
	}
}