class debian_vpn-l2tp::packages {

    package { 'openswan':
        ensure => latest
    }

    package { 'xl2tpd':
        ensure => latest,
	require => Package['openswan']
    }


}
