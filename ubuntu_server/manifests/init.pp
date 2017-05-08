class ubuntu_server {
    #include '::ntp'
    include ssh

    include ubuntu_server::packages
    include ubuntu_server::services
    include ubuntu_server::files
    include ubuntu_server::users

}

#include debian_server
