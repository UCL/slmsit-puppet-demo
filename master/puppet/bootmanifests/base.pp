include epel
include puppetlabs_yum

package { 'ruby-sqlite3':
	ensure => 'present',
	require => Class['epel'],
	}

class {'puppet':
	mode => 'server',
	before => Class['puppetdashboard'],
	module_path => '/vagrant/puppet/modules',
	manifest_path => '/vagrant/puppet/manifests/site.pp',
	require => [Class['epel'],Class['puppetlabs_yum']],
	}
file { '/etc/puppet/modules':
	ensure => 'link',
	target => '/var/puppet/modules',
	force => 'true',
	require => Class['puppet'],
}
class { 'puppetdashboard':

	require => [Class['epel'],Class['puppetlabs_yum'],File['/etc/puppet/modules'],Class['puppet']],
}


	
include nj-niceties