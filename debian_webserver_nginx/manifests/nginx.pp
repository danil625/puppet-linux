class debian_webserver_nginx::nginx {

    package { 'nginx-full':
        ensure	=> latest
    }

    file { 'nginx.conf':
        path	=> '/etc/nginx/nginx.conf',
        ensure	=> file,
        mode	=> 0644,
        owner	=> 'root',
        group	=> 'root',
        notify	=> Service['nginx'],
        require	=> Package['nginx-full']
    }

    file { 'global':
        path	=> '/etc/nginx/conf.d/global',
        ensure	=> directory,
        mode	=> 0755,
        owner	=> 'root',
        group	=> 'root',
        require	=> Package['nginx-full']
    }

    file { 'php.conf':
        path	=> '/etc/nginx/conf.d/global/php.conf',
        ensure	=> file,
        mode	=> 0644,
        owner	=> 'root',
        group	=> 'root',
        content	=> template('debian_webserver_nginx/nginx/php.conf.erb'),
        notify	=> Service['nginx']
    }

    service { 'nginx':
        ensure	=> running,
        enable	=> true,
        #subscribe => File['nginx.conf'],
        #subscribe => File['php.conf'],
        require	=> Package['nginx-full']
    }

}
