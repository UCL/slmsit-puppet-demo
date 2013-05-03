host { 'slmspdemo01t.adtest.bcc.ac.uk':
	ensure => present,
	ip => '192.168.33.2',
	}
class {'puppet':
	mode => 'client',
	server => 'slmspdemo01t.adtest.bcc.ac.uk',

	}