class ubuntu_server::packages {
    package { 'htop':
        ensure => latest
    }
	package { 'aptitude':
        ensure => latest
    }

    package { 'mc':
        ensure => latest
    }

    package { 'screen':
        ensure => latest
    }

    package { 'tmux':
        ensure => latest
    }

    package { 'lynx-cur':
        ensure => latest
    }

    package { 'tcpdump':
        ensure => latest
    }

    package { 'fail2ban':
        ensure => latest
    }

    package { 'ntp':
        ensure => latest
    }

	package { 'openssh-server':
        ensure => latest
    }

}
