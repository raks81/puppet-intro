node 'demo' {
	include nginx::install
	include nginx::configure
	include nginx::service

	include haproxy
}
