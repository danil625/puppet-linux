class debian_server::services {

    service { 'nfs-common':
        enable => false,
        ensure => stopped,
    }

    service { 'rpcbind':
        enable => false,
        ensure => stopped,
    }

}
