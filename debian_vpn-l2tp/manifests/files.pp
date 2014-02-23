class debian_vpn-l2tp::files {

    file { 'ipsec.conf':
        path	=> '/etc/ipsec.conf.NEW',
        ensure	=> file,
        mode	=> 0644,
        owner	=> 'root',
        group	=> 'root',
        content	=> template('debian_vpn-l2tp/ipsec.conf.erb')
    }

    file { 'ipsec.secrets':
        path	=> '/etc/ipsec.secrets.NEW',
        ensure	=> file,
        mode	=> 0600,
        owner	=> 'root',
        group	=> 'root',
        content	=> template('debian_vpn-l2tp/ipsec.secrets.erb')
    }

    file { 'chap-secrets':
        path	=> '/etc/ppp/chap-secrets.NEW',
        ensure	=> file,
        mode	=> 0600,
        owner	=> 'root',
        group	=> 'root',
        content	=> template('debian_vpn-l2tp/chap-secrets.erb')
    }

    file { 'options.l2tpd':
        path	=> '/etc/ppp/options.l2tpd.NEW',
        ensure	=> file,
        mode	=> 0644,
        owner	=> 'root',
        group	=> 'root',
        content	=> template('debian_vpn-l2tp/options.l2tpd.erb')
    }

    file { 'xl2tpd.conf':
        path	=> '/etc/xl2tpd/xl2tpd.conf.NEW',
        ensure	=> file,
        mode	=> 0644,
        owner	=> 'root',
        group	=> 'root',
        content	=> template('debian_vpn-l2tp/xl2tpd.conf.erb')
    }

    file { 'iptables.rules':
        path	=> '/etc/iptables.rules.NEW',
        ensure	=> file,
        mode	=> 0644,
        owner	=> 'root',
        group	=> 'root',
        content	=> template('debian_vpn-l2tp/iptables.rules.erb')
    }

    file { 'iptables':
        path	=> '/etc/network/if-pre-up.d/iptables',
        ensure	=> file,
        mode	=> 0755,
        owner	=> 'root',
        group	=> 'root',
        content	=> template('debian_vpn-l2tp/iptables.erb')
    }

}
