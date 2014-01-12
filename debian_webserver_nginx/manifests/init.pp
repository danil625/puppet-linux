class debian_webserver_nginx inherits debian_server {
    #include nginx

    #needs 'puppetlabs/stdlib'  !!!

    include debian_webserver_nginx::nginx
    include debian_webserver_nginx::php
    include debian_webserver_nginx::php-ext

}
