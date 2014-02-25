class debian_server::files {

    file { '20auto-upgrades':
        path	=> '/etc/apt/apt.conf.d/20auto-upgrades',
        ensure	=> file,
        mode	=> 0644,
        owner	=> 'root',
        group	=> 'root',
        require	=> Package['unattended-upgrades'],
        content => template('debian_server/20auto-upgrades.erb')
    }

}
