class debian_vpn-l2tp::config {

    sysctl {
        'net.ipv4.ip_forward': value => '1'
    }

    sysctl {
        'net.ipv4.conf.all.send_redirects': value => '0'
    }
    sysctl {
        'net.ipv4.conf.default.send_redirects': value => '0'
    }
    sysctl {
        'net.ipv4.conf.lo.send_redirects': value => '0'
    }
    sysctl {
        'net.ipv4.conf.eth0.send_redirects': value => '0'
    }


    sysctl {
        'net.ipv4.conf.all.accept_redirects': value => '0'
    }
    sysctl {
        'net.ipv4.conf.default.accept_redirects': value => '0'
    }
    sysctl {
        'net.ipv4.conf.lo.accept_redirects': value => '0'
    }
    sysctl {
        'net.ipv4.conf.eth0.accept_redirects': value => '0'
    }


}
