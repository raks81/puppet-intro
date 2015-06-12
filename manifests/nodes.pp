node 'demo' {

	$site_name = 'bollywood'
	$site_domain = 'bollywood.in'
	include nginx
	include haproxy

	nginx::vhost { 'hollywood' : 
		port => 81,
		site_domain => 'hollywood.com'
	}

	nginx::vhost { 'kollywood' : 
		port => 82,
		site_domain => 'kollywood.com'
	}

	nginx::vhost { 'tollywood' : 
		port => 83,
		site_domain => 'tollywood.com'
	}
}
