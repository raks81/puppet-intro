# Class: nginx::configure
#
#
class nginx::configure {
	# resources
	file { '/var/www/':
		ensure => directory,
	}

	file { "/var/www/$site_name":
		ensure => directory,
	}

	file { "/etc/nginx/conf.d/default.conf":
		content => template("nginx/vhost.conf.erb"),
		notify => Service['nginx'],
	}

	file { "/var/www/${site_name}/index.html":
		content => template("nginx/index.html.erb"),
	}
}