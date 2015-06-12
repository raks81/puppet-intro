# Class: haproxy
#
#
class haproxy {
	include haproxy::install
	include haproxy::configure
	include haproxy::service
}