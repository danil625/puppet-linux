class debian_server::packages {
    package { 'htop':
        ensure => latest
    }

    package { 'mc':
        ensure => latest
    }

    package { 'screen':
        ensure => latest
    }

    package { 'lynx-cur':
        ensure => latest
    }

    package { 'tcpdump':
        ensure => latest
    }

}