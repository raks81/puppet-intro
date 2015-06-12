# Class: haproxy::service
#
#
class haproxy::service {
	service { 'haproxy':
		enable      => true,
		ensure      => running,
		#hasrestart => true,
		#hasstatus  => true,
		require    => Class["haproxy::install"],
	}
}