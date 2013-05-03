class nj-niceties {

package { 'nano':
	ensure => present,
	require => Class['epel'],
}	

package { 'byobu':
	ensure => present,
	require => Class['epel'],
}->
file_line { 'byobu':
	line => '_byobu_sourced=1 . /usr/bin/byobu-launch',
	path => '/etc/profile',
}

service { 'iptables':
	enable => false,
	ensure => false,
	}

}