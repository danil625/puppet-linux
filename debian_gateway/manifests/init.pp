class debian_gateway inherits debian_server {

    include debian_gateway::packages
    include debian_gateway::config

}
