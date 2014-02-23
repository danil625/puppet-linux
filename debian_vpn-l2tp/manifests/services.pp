class debian_vpn-l2tp::services {

    service { 'ipsec':
        enable	=> true,
        ensure	=> running
    }

    service { 'xl2tpd':
        enable	=> true,
        ensure	=> running
    }


}
