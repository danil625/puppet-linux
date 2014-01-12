class debian_webserver_nginx::php-ext {

    package {
        [ 'php5-mysql', 'php5-intl', 'php-pear', 'php5-imap', 'php5-mcrypt',
          'php5-xmlrpc', 'php5-xsl', 'php-apc' ]:
        ensure	=> latest
    }

}
