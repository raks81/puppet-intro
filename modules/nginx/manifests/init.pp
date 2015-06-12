# Class: nginx
#
#
class nginx {
	# resources
	include nginx::install
	#include nginx::configure
	include nginx::service
}

