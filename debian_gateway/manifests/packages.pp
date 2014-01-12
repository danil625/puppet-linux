class debian_gateway::packages {

    package { 'iftop':
        ensure => latest
    }

    package { 'mtr-tiny':
        ensure => latest
    }

    package { 'ifmetric':
        ensure => latest
    }

}
