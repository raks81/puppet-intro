node 'demo' {

	$site_name = 'bollywood'
	$site_domain = 'bollywood.in'
	include nginx::install
	include nginx::configure
	include nginx::service

	include haproxy
}
