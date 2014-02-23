class debian_vpn-l2tp inherits debian_gateway {

    include debian_vpn-l2tp::packages
    include debian_vpn-l2tp::config
    include debian_vpn-l2tp::files
    include debian_vpn-l2tp::services

}
