class debian_server {
    include '::ntp'
    include ssh

    include debian_server::packages
    include debian_server::services
    include debian_server::files

}

#include debian_server

