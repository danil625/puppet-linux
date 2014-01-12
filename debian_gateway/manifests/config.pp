class debian_gateway::config {

    file_line { 'sysctl_nonlocal':
        path	=> '/etc/sysctl.conf',
        line	=> 'net.ipv4.ip_nonlocal_bind=1'
    }

}
