class nginx::install {
	package { 'httpd':
		ensure => absent,
	}

	package { 'nginx':
		ensure => installed,
		require => Package['httpd'],
	}	# resources
}
