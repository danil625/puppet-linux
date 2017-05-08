class ubuntu_server::services {

    # class for disabling unnecessary serivces, but Ubuntu is mostly fine here by now
    # example:

    #service { 'nfs-common':
    #    enable => false,
    #    ensure => stopped,
    #}

}
