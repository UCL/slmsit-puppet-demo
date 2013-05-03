class nj-samba {

$sambaShortDomain = 'ADTEST'
$sambaLongDomain = 'ADTEST.BCC.AC.UK'

	package { 'samba4': 
		ensure=>present,
	}
	
	package { 'samba4-winbind': 
		ensure=>present,
	}

	package { 'samba4-winbind-krb5-locator': 
		ensure=>present,
	}
	
	
 file { '/etc/samba/smb.conf':
	ensure  =>present,
	content => template('nj-samba/smb.conf.erb'),
 }
	
}