class debian_webserver_nginx::php {

    package { 'php5-fpm':
        ensure	=> latest
    }

    file { 'php5-fpm.conf':
        path	=> '/etc/php5/fpm/php-fpm.conf',
        ensure	=> file,
        mode	=> 0644,
        owner	=> 'root',
        group	=> 'root',
        require => Package['php5-fpm']
    }

    file_line { 'timezone':
        path	=> '/etc/php5/fpm/php.ini',
        line	=> 'date.timezone=Europe/Moscow',
        require => Package['php5-fpm']
    }

    file_line { 'pathinfo':
        path	=> '/etc/php5/fpm/php.ini',
        line	=> 'cgi.fix_pathinfo=0',
        require => Package['php5-fpm']
    }

    file_line { 'gc_maxlifetime':
        path	=> '/etc/php5/fpm/php.ini',
        line	=> 'session.gc_maxlifetime=15552000',
        require => Package['php5-fpm']
    }

    service { 'php5-fpm':
        ensure	=> running,
        enable	=> true,
        subscribe => File['php5-fpm.conf'],
        require	=> Package['php5-fpm']
    }

}
